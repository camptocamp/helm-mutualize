HELM != helm

gen-expected:
	${HELM} template --namespace=default --values=tests/values.yaml test . > tests/expected.yaml || \
		${HELM} template --debug --namespace=default --values=tests/values.yaml test .
	sed -i 's/[[:blank:]]\+$$//g'  tests/expected.yaml
	${HELM} template --namespace=default --values=tests/alt-values.yaml test . > tests/alt-expected.yaml || \
		${HELM} template --debug --namespace=default --values=tests/alt-values.yaml test .
	sed -i 's/[[:blank:]]\+$$//g'  tests/alt-expected.yaml

start-local:
	k3d cluster delete test-cluster || true
	k3d cluster create test-cluster --no-lb --no-hostip --no-rollback --k3s-server-arg --no-deploy=traefik,servicelb,metrics-server
	${HELM} install test-pg --set=persistence.enabled=false --set=tls.enabled=true --set=tls.autoGenerated=true --set=postgresqlPassword=mySuperTestingPassword --set=volumePermissions.enabled=true bitnami/postgresql
	${HELM} install test-redis --set=auth.enabled=false --set=replica.replicaCount=0 --set=master.persistence.enabled=false bitnami/redis
	kubectl apply -f tests/expected.yaml