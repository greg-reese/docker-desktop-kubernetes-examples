# Confluent For Kubernetes

Based on [this tutorial](https://docs.confluent.io/operator/current/co-quickstart.html).

# Connecting to confluent cloud

```
kubectl port-forward services/controlcenter -n confluent 9021:9021
http://localhost:9021/clusters
```