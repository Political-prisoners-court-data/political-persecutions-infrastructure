kubectl delete secret --ignore-not-found=true pproxy-secret
kubectl delete secret --ignore-not-found=true mongo-secret

kubectl create secret generic pproxy-secret \
  --from-literal=remote-uri='ss://password@host:port'

kubectl create secret generic mongo-secret \
  --from-literal=host='mongodb://host.docker.internal:27017/eventsDb?authSource=admin' \
  --from-literal=username='app' \
  --from-literal=password='app'
