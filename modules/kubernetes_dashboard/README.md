# Kubernetes Dashboard

Based on [this helm chart](https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard).

## Accessing

1. Get login token for kubernetes admin-user sa
```
kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
```
2. Proxy in via `kubectl proxy`
3. Navigate to `http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:https/proxy/`
4. Paste in token from step 1 and log in