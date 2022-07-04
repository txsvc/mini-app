# Deployment

## Red Hat OpenShift

### Preparation

* Make a copy of `build_webhook_secrets.example.yaml` with name `build_webhook_secrets.yaml`. 
* Make a copy of `secrets.example.yaml` with name `secrets.yaml`. 

Edit values in both files according.

### Create a namespace

```shell
oc new-project <your_project_name>
```

### Deployment

```shell
# secrets
oc apply -f build_webhook_secrets.yaml
oc apply -f secrets.yaml

# config
oc apply -f build_config_map.yaml

# build
oc apply -f build_config.yaml

# deploy
oc apply -f deployment_config.yaml

```


## Google App Engine

TBD