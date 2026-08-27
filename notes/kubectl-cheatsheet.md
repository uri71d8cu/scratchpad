# Kubernetes context switching

Quick reminders for moving between clusters and namespaces while debugging.

Last updated: 2026-08-27

## Contexts

```bash
kubectl config get-contexts
kubectl config current-context
kubectl config use-context gke_project_zone_cluster
```

## Namespaces

```bash
kubectl get namespaces
kubectl get pods -n <namespace>
```

## Quick logging

```bash
kubectl logs -n <namespace> deploy/<name> --tail=100 -f
```

## Port-forward

```bash
kubectl port-forward -n <namespace> svc/<service> 8080:80
```

## One-off context flag

```bash
kubectl get pods --context gke_project_zone_cluster -n <namespace>
```