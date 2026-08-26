#!/usr/bin/env bash
set -euo pipefail

# List pods sorted by container restart count, cluster-wide or per namespace.
NS="${1:-}"

if [[ -n "$NS" ]]; then
  kubectl get pods -n "$NS" --sort-by='.status.containerStatuses[0].restartCount' -o wide
else
  kubectl get pods -A --sort-by='.status.containerStatuses[0].restartCount' -o wide
fi
