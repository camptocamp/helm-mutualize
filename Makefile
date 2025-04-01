HELM ?= helm
KUBECONFIG ?= ./kubeconfig

start-local:
	k3d cluster delete test-cluster || true
	k3d cluster create test-cluster --no-lb --no-hostip --no-rollback --k3s-server-arg --no-deploy=traefik,servicelb,metrics-server
	${HELM} install test-pg --set=persistence.enabled=false --set=tls.enabled=true --set=tls.autoGenerated=true --set=postgresqlPassword=mySuperTestingPassword --set=volumePermissions.enabled=true bitnami/postgresql
	${HELM} install test-redis --set=auth.enabled=false --set=replica.replicaCount=0 --set=master.persistence.enabled=false bitnami/redis
	kubectl apply -f tests/expected.yaml

acceptance:
	# Setup k3s/k3d
	c2cciutils-k8s-install || true

	# Cleanup
	helm uninstall test-redis || true
	helm uninstall operator-shared-config-manager || true
	helm uninstall test-pg || true

	# Create the database
	c2cciutils-k8s-db

	# Install shared config manager operator
	helm repo add operator-shared-config-manager https://camptocamp.github.io/operator-shared-config-manager
	VERSION=`ci/get-version camptocamp/operator-shared-config-manager` helm template \
		operator-shared-config-manager --set=crd.suffix=int --set=crd.shortSuffix=i \
		--set=clusterrole=false --set=clusterrolebinding=false --set=deployment=false \
		--version=${VERSION} operator-shared-config-manager/operator-shared-config-manager | kubectl apply -f -

      # Install Github webhook operator
	helm repo add operator-github-webhook https://camptocamp.github.io/operator-github-webhook
	VERSION=`ci/get-version camptocamp/operator-github-webhook` helm template \
		operator-github-webhook --set=crd.suffix=int --set=crd.shortSuffix=i \
		--set=clusterrole=false --set=clusterrolebinding=false --set=deployment=false \
		--version=${VERSION} operator-github-webhook/operator-github-webhook | kubectl apply -f -

	helm repo add bitnami https://charts.bitnami.com/bitnami
	VERSION=`ci/get-version bitnami/redis` helm template test-redis --set=auth.enabled=false --set=replica.replicaCount=0 \
		--set=master.persistence.enabled=false --version=${VERSION} bitnami/redis | kubectl apply -f -

	# Install prometheus CRD
	curl https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/main/jsonnet/prometheus-operator/podmonitors-crd.json \
		--output /tmp/podmonitors-crd.json
	kubectl apply -f /tmp/podmonitors-crd.json

	kubectl apply -f tests/expected.yaml

acceptance-clean:
	kubectl delete -f tests/expected.yaml || true
	helm uninstall test-redis || true
	helm uninstall operator-shared-config-manager || true
	helm uninstall test-pg || true
	docker stop k3d-test-cluster-server-0 || true
	docker rm k3d-test-cluster-server-0 || true
