# HELM mutualize configuration

## Properties

- **`global`** _(object)_
  - **`image`**: Refer to _[#/definitions/globalImage](#definitions/globalImage)_.
  - **`configMapNameOverride`**: Refer to _[#/definitions/configMapNameOverride](#definitions/configMapNameOverride)_.
- **`common`**
- **`sharedAnchor`**: Free space where we can defined anchor to be used later.
- **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
- **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
- **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
- **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
- **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
- **`serviceAccount`**: Refer to _[#/definitions/serviceAccount](#definitions/serviceAccount)_.
- **`podSecurityContext`**: Refer to _[#/definitions/podSecurityContext](#definitions/podSecurityContext)_.
- **`securityContext`**: Refer to _[#/definitions/securityContext](#definitions/securityContext)_.
- **`affinity`**: Refer to _[#/definitions/affinity](#definitions/affinity)_.
- **`tolerations`**: Refer to _[#/definitions/tolerations](#definitions/tolerations)_.
- **`config`** _(object)_: Cannot contain additional properties.
  - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
  - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
  - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
  - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`podLabels`**: Refer to _[#/definitions/podLabels](#definitions/podLabels)_.
  - **`podAnnotations`**: Refer to _[#/definitions/podAnnotations](#definitions/podAnnotations)_.
  - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`affinity`**: Refer to _[#/definitions/affinity](#definitions/affinity)_.
  - **`nodeSelector`**: Refer to _[#/definitions/nodeSelector](#definitions/nodeSelector)_.
  - **`replicaCount`**: Refer to _[#/definitions/replicaCount](#definitions/replicaCount)_.
  - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
  - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
  - **`service`**: Refer to _[#/definitions/service](#definitions/service)_.
  - **`path`** _(string)_: The entrypoint of the service.
- **`print`** _(object)_: Cannot contain additional properties.
  - **`enabled`** _(boolean)_: Enable the pod configuration.
  - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
  - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
  - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
  - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`podLabels`**: Refer to _[#/definitions/podLabels](#definitions/podLabels)_.
  - **`podAnnotations`**: Refer to _[#/definitions/podAnnotations](#definitions/podAnnotations)_.
  - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`affinity`**: Refer to _[#/definitions/affinity](#definitions/affinity)_.
  - **`nodeSelector`**: Refer to _[#/definitions/nodeSelector](#definitions/nodeSelector)_.
  - **`replicaCount`**: Refer to _[#/definitions/replicaCount](#definitions/replicaCount)_.
  - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
  - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
  - **`config`** _(object)_: the configuration container configuration. Can contain additional properties.
    - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
    - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
    - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`webXml`** _(string)_: The web.xml file to use.
  - **`command`** _(array)_: The command to pass to the container.
    - **Items** _(string)_
  - **`args`** _(array)_: The arguments to pass to the container.
    - **Items** _(string)_
  - **`service`**: Refer to _[#/definitions/service](#definitions/service)_.
  - **`volumes`** _(object)_: The volumes to mount. Can contain additional properties.
    - **Additional properties** _(string)_: The path to mount.
  - **`jmxExporter`** _(object)_: The JMX exporter configuration. Cannot contain additional properties.
    - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
    - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
    - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
    - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
    - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
    - **`config`** _(string)_: The configuration file to use by the JMX exporter.
- **`tilecloudchainInitMainConfig`** _(object)_: An initialization container for TileCloud-chain, used to generate the main configuration file. Can contain additional properties.
  - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
  - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
  - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`command`** _(array)_: The command to pass to the container.
    - **Items** _(string)_
  - **`arguments`** _(array)_: The arguments to pass to the container.
    - **Items** _(string)_
- **`tilecloudchain`**: Refer to _[#/definitions/tileCloud-chain](#definitions/tileCloud-chain)_.
- **`tilecloudchainSlave`**: Refer to _[#/definitions/tileCloud-chain](#definitions/tileCloud-chain)_.
- **`home`** _(object)_: The home configuration (just a static page that present the services). Cannot contain additional properties.
  - **`enabled`** _(boolean)_: Enable the service.
  - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
  - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
  - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
  - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`podLabels`**: Refer to _[#/definitions/podLabels](#definitions/podLabels)_.
  - **`podAnnotations`**: Refer to _[#/definitions/podAnnotations](#definitions/podAnnotations)_.
  - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`affinity`**: Refer to _[#/definitions/affinity](#definitions/affinity)_.
  - **`nodeSelector`**: Refer to _[#/definitions/nodeSelector](#definitions/nodeSelector)_.
  - **`replicaCount`**: Refer to _[#/definitions/replicaCount](#definitions/replicaCount)_.
  - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
  - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
  - **`service`**: Refer to _[#/definitions/service](#definitions/service)_.
  - **`serviceUrl`** _(string)_: The URL of the home service.
- **`redirectConfig`**
- **`redirect`** _(object)_: The home configuration (just a static page that present the services). Cannot contain additional properties.
  - **`enabled`** _(boolean)_: Enable the service.
  - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
  - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
  - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
  - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`podLabels`**: Refer to _[#/definitions/podLabels](#definitions/podLabels)_.
  - **`podAnnotations`**: Refer to _[#/definitions/podAnnotations](#definitions/podAnnotations)_.
  - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`affinity`**: Refer to _[#/definitions/affinity](#definitions/affinity)_.
  - **`nodeSelector`**: Refer to _[#/definitions/nodeSelector](#definitions/nodeSelector)_.
  - **`replicaCount`**: Refer to _[#/definitions/replicaCount](#definitions/replicaCount)_.
  - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
  - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
  - **`service`**: Refer to _[#/definitions/service](#definitions/service)_.
  - **`probes`** _(object)_: The readinessProbe and livenessProbe probes configuration.
- **`sshKey`** _(string)_: The SSH key to use to clone the repository.
- **`sharedConfig`**
- **`additionalConfigs`** _(object)_: Can contain additional properties.
  - **Additional properties**
- **`additionalWebhooks`** _(object)_: Additional WebHooks used by the GitHub WebHook operator to create WebHook in the GitHub repository of the related project. Cannot contain additional properties.
  - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
  - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
  - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
  - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`repositories`** _(object)_: The repositories definition to create the WebHook in (<shared_config_source_name>: <github_organization>/<repository_name>). Can contain additional properties.
    - **Additional properties** _(string)_
  - **`secret`** _(string)_: The secret used to create the WebHook.
  - **`base_url`** _(string)_: The base URL of the shared configuration manager service.
- **`ingress`** _(object)_: The Ingress configuration. Cannot contain additional properties.
  - **`enabled`** _(boolean)_: Enable the ingress.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`hosts`** _(array)_: The hosts to use for the Ingress.
    - **Items** _(object)_: Cannot contain additional properties.
      - **`name`** _(string)_: The name of the host.
      - **`host`** _(string)_: The host to use.
      - **`tls`** _(object)_: TLS configuration for the host. Cannot contain additional properties.
        - **`secretName`** _(string)_: The name of the secret to use.
  - **`paths`** _(array)_: The path to use for the Ingress.
    - **Items** _(string)_
- **`prometheus`** _(object)_: The Prometheus configuration. Cannot contain additional properties.
  - **`enabled`** _(boolean)_: Enable the Prometheus configuration.
- **`environment`** _(string)_: The the used operators environment (int or prod).
- **`tilecloudchainConfig`**
- **`rbac`** _(boolean)_: Generate the RBAC Kubernetes objects.
- **`rbacGroups`** _(array)_: The Active directory groups to add to the RBAC configuration.
  - **Items** _(string)_
- **`envConfigMap`** _(object)_: The annotations used in the env ConfigMap. Cannot contain additional properties.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.

## Definitions

- <a id="definitions/nameOverride"></a>**`nameOverride`** _(string)_: [helm-common] Override the name.
- <a id="definitions/fullnameOverride"></a>**`fullnameOverride`** _(string)_: [helm-common] Override the fullname.
- <a id="definitions/releaseTrunc"></a>**`releaseTrunc`** _(integer)_: [helm-common] The release trunk length. Default: `20`.
- <a id="definitions/prefixTrunc"></a>**`prefixTrunc`** _(integer)_: [helm-common] The prefix trunk length (release and chart name). Default: `40`.
- <a id="definitions/serviceAccount"></a>**`serviceAccount`** _(object)_: [helm-common] Service account configuration.
  - **`create`** _(boolean)_: Create a service account.
  - **`name`** _(string)_: Name of the service account.
- <a id="definitions/podSecurityContext"></a>**`podSecurityContext`** _(object)_: [helm-common] Pod security context.
- <a id="definitions/securityContext"></a>**`securityContext`** _(object)_: [helm-common] Container security context.
- <a id="definitions/globalImage"></a>**`globalImage`** _(object)_: [helm-common] global image configuration.
  - **`pullPolicy`** _(string)_: Image pull policy.
  - **`pullSecrets`** _(array)_: Image pull secrets.
- <a id="definitions/configMapNameOverride"></a>**`configMapNameOverride`** _(object)_: [helm-common] global: Used to be able to globally override the name of the ConfigMap. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/labels"></a>**`labels`** _(object)_: [helm-common] Pod labels. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/annotations"></a>**`annotations`** _(object)_: [helm-common] Pod annotations. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/podLabels"></a>**`podLabels`** _(object)_: [helm-common] Labels used only in the Pod definition. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/podAnnotations"></a>**`podAnnotations`** _(object)_: [helm-common] Annotations used only in the Pod definition. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/serviceName"></a>**`serviceName`** _(string)_: [helm-common] The name of the service (not Kubernetes service), this will postfix the name.
- <a id="definitions/affinity"></a>**`affinity`** _(object)_: [helm-common] Pod: The used affinity.
- <a id="definitions/tolerations"></a>**`tolerations`** _(array)_: [helm-common] Pod: Tolerations.
- <a id="definitions/nodeSelector"></a>**`nodeSelector`** _(object)_: [helm-common] Pod: Node selector.
- <a id="definitions/replicaCount"></a>**`replicaCount`** _(integer)_: The number of replicas.
- <a id="definitions/image"></a>**`image`** _(object)_: [helm-common] Container: Image configuration.
  - ## **Any of**
    -
  - **`repository`** _(string, required)_: Image repository.
  - **`tag`** _(string)_: Image tag, used if the sha is not defined.
  - **`sha`** _(['null', 'string'])_: Image sha.
- <a id="definitions/env"></a>**`env`** _(object)_: [helm-common] Container: Environment variables. Can contain additional properties.
  - **Additional properties**
    - **One of**
      - _object_
        - **`type`** _(string, required)_: Disable the environment variable. Must be one of: `["none"]`.
      - _object_
        - **`type`** _(string)_: Environment variable from a direct value. Must be one of: `["value"]`. Default: `"value"`.
        - **`order`** _(integer)_: Order of the environment variable. Must be one of: `[0, 1]`. Default: `0`.
        - **`value`** _(string, required)_: Value of the environment variable.
      - _object_
        - **`type`** _(string, required)_: Environment variable from a ConfigMap or a Secret. Must be one of: `["configMap", "secret"]`.
        - **`order`** _(integer)_: Order of the environment variable. Must be one of: `[0, 1]`. Default: `0`.
        - **`name`** _(string, required)_: Name of the ConfigMap or Secret, if 'self', same name as the service.
        - **`key`** _(string, required)_: Key of the ConfigMap or Secret.
      - _object_
        - **`type`** _(string, required)_: Free valueFrom for an environment variable. Must be one of: `["valueFrom"]`.
        - **`order`** _(integer)_: Order of the environment variable. Must be one of: `[0, 1]`. Default: `0`.
        - **`valueFrom`** _(object, required)_
- <a id="definitions/resources"></a>**`resources`** _(object)_: [helm-common] Container: The container resources.
- <a id="definitions/service"></a>**`service`** _(object)_: The service configuration. Cannot contain additional properties.
  - **`type`** _(string)_: The type of service.
  - **`port`** _(integer)_: The port of the service.
- <a id="definitions/tileCloud-chain"></a>**`tileCloud-chain`** _(object)_: Cannot contain additional properties.
  - **`enabled`** _(boolean)_: Enable the pod configuration.
  - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
  - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
  - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
  - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
  - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
  - **`podLabels`**: Refer to _[#/definitions/podLabels](#definitions/podLabels)_.
  - **`podAnnotations`**: Refer to _[#/definitions/podAnnotations](#definitions/podAnnotations)_.
  - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`affinity`**: Refer to _[#/definitions/affinity](#definitions/affinity)_.
  - **`nodeSelector`**: Refer to _[#/definitions/nodeSelector](#definitions/nodeSelector)_.
  - **`replicaCount`**: Refer to _[#/definitions/replicaCount](#definitions/replicaCount)_.
  - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
  - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
  - **`config`** _(object)_: the configuration container configuration. Can contain additional properties.
    - **`image`**: Refer to _[#/definitions/image](#definitions/image)_.
    - **`env`**: Refer to _[#/definitions/env](#definitions/env)_.
    - **`resources`**: Refer to _[#/definitions/resources](#definitions/resources)_.
  - **`probes`** _(object)_: The readinessProbe and livenessProbe probes configuration.
  - **`service`**: Refer to _[#/definitions/service](#definitions/service)_.
  - **`mainConfig`** _(object)_: The main configuration for TileCloud-chain.
