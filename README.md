# Kubernetes Infrastructure Definition For Political Persecutions in Russia Monitoring Project

## Description
- Install `kubernetes`
- Install `helm` kubernetes charts manager
- Execute:
```Bash
cd helm/bitnami/mongodb/
```
```Bash
helm install mongodb oci://registry-1.docker.io/bitnamicharts/mongodb -f values.yml
```
```Bash
cd ../../../
```
```Bash
kubectl apply -f application-deployment.yml
```
- Web interface is available on [http://localhost:3000/rfm-updates](http://localhost:3000/rfm-updates)