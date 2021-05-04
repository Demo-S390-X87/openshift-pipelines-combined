#!/bin/bash

echo "Running oc delete all --all"
oc delete all --all

echo "Deleting Pipeline & resources"
oc delete pipeline,pipelinerun,task,taskrun --all

echo "Deleting PVC"
oc delete pvc source-pvc

echo "Removing Images"
podman rmi --all --force
