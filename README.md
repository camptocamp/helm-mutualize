# [Kubernetes](https://kubernetes.io/) [HELM chart](https://helm.sh/) for mutualize applications.

## Introduction

Provide mutualize applications with Kubernetes, currently the print service and the TileCloud-chain service.

## Infrastructure components

This chart will use:

- Shared config manager
- Operator shared config
- Operator GitHub webhook (indirectly)

# Data workflow

Main data workflow is:

- The following source objects (one for the print and one for TileCloud-chain):
  ```yaml
  apiVersion: camptocamp.com/v1
  kind: SharedConfigSource
  metadata:
    name: test-geomapfish-test-print
    labels: ...
      mutualize-sharedconfig: 'true'
  spec:
    name: test-print
    content: |
      type: git
      repo: git@github.com:camptocamp/test.git
      branch: master
      key: admin1234
      sub_dir: print/print-apps/test
      tags:
        - print
      template_engines:
        - type: shell
          environment_variables: true
          data:
            - name: "TEST"
              value: "test"
  ---
  apiVersion: camptocamp.com/v1
  kind: SharedConfigSource
  metadata:
    name: test-geomapfish-test-tilecloudchain
    labels: ...
      mutualize-sharedconfig: 'true'
  spec:
    name: test-tilecloudchain
    content: |
      type: git
      repo: git@github.com:camptocamp/test.git
      branch: master
      key: admin1234
      sub_dir: tilegeneration
      tags:
        - print
      template_engines:
        - type: shell
          environment_variables: true
          data:
            - name: "TEST"
              value: "test"
  ```
- And the receptor object:
  ```yaml
  apiVersion: camptocamp.com/v1
  kind: SharedConfigConfig
  metadata:
    name: test-mutualize-config
    labels: ...
  spec:
    matchLabels:
      mutualize-sharedconfig: 'true'
    property: sources
    configmapName: shared_config_manager.yaml
  ```
- Will create the main config for the shared config manager as a config map, used here:
  https://github.com/camptocamp/helm-mutualized/blob/master/templates/shared-config-deployment.yaml#L42-L44
- The shared config manager will get the data from GitHub and provide the configuration to the print ant to TileCloud-chain according to the tags.

The TileCloud also need the hosts config:

- The following object:
  ```yaml
  apiVersion: camptocamp.com/v1
  kind: SharedConfigSource
  metadata:
    name: test-geomapfish-test-tilecloudchain-hosts-main
    labels: ...
      mutualize-tilecloudchain-hosts: 'true'
  spec:
    name: test-tilecloudchain
    content:
      demo.camptocamp.com: /etc/mutualize-configs/test-tilecloudchain/config.yaml
  ```
- And the receptor object:

  ```yaml
  apiVersion: camptocamp.com/v1
  kind: SharedConfigConfig
  metadata:
    name: test-mutualize-tilecloud-hosts
    labels: ...
  spec:
    matchLabels:
      mutualize-tilecloudchain-hosts: 'true'
    configmap_name: hosts.yaml
  ```

- Will create the hosts config for TileCloud-chain as a config map, used here:
  https://github.com/camptocamp/helm-mutualized/blob/master/templates/tilecloudchain-deployment.yaml#L63-L65

# Update workflow

- The following objects:
  ```yaml
  apiVersion: camptocamp.com/v1
  kind: GitHubWebhook
  metadata:
    name: test-geomapfish-test-print
    labels: ...
  spec:
    repository: camptocamp/test
    # Should be something like https://config.mutualize(-int)?.camptocamp.com/1/refresh/test-print/
    url: See above
    contentType: json
  ---
  apiVersion: camptocamp.com/v1
  kind: GitHubWebhook
  metadata:
    name: test-geomapfish-test-tilecloudchain
    labels: ...
  spec:
    repository: camptocamp/test
    # Should be something like https://config.mutualize.camptocamp.com/1/refresh/test-tilecloudchain/
    url: See above
    contentType: json
  ```
- Will create a GitHub webhook to trigger the shared config manager updates.
