Echo set up OC
oc new-project cats-dogs
oc create -f hello.yaml
tkn task start --showlog hello

oc create -f apply_manifest_task.yaml
oc create -f update_deployment_task.yaml
tkn task ls

oc create -f ../resources/persistent_volume_claim.yaml


echo create pipelines
oc create -f ../pipelines/build-and-deploy-api.yml
oc create -f ../pipelines/build-and-deploy-ui.yml
