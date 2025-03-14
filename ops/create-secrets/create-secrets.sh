kubectl delete secret --ignore-not-found=true pproxy-secret
kubectl delete secret --ignore-not-found=true mongo-scraper-secret
kubectl delete secret --ignore-not-found=true mongo-web-secret

kubectl create secret generic pproxy-secret \
  --from-literal=remote-uri='ss://password@host:port'

kubectl create secret generic mongo-scraper-secret \
  --from-env-file=mongo-scraper.env

kubectl create secret generic mongo-web-secret \
  --from-env-file=mongo-web.env
