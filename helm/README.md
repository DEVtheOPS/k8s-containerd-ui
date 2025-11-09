# Containerd UI Helm Chart

A Helm chart for deploying Containerd UI, a web interface for managing containerd container images.

## Installation

```bash
# Install the chart
helm install containerd-ui ./helm

# Install with custom values
helm install containerd-ui ./helm -f custom-values.yaml

# Upgrade
helm upgrade containerd-ui ./helm
```

## Configuration

The following table lists the configurable parameters:

| Parameter | Description | Default |
|-----------|-------------|---------|
| `app.name` | Application name | `containerd-ui` |
| `app.replicas` | Number of replicas | `1` |
| `image.repository` | Container image repository | `containerd-ui` |
| `image.tag` | Container image tag | `latest` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |

## Example custom values.yaml

```yaml
app:
  name: my-containerd-ui
  replicas: 2

image:
  repository: ghcr.io/my-org/containerd-ui
  tag: v1.2.3
  pullPolicy: Always
```

## Requirements

- Kubernetes cluster with containerd runtime
- Access to containerd socket on nodes
- Appropriate RBAC permissions for service account

## Security Considerations

This chart requires privileged access to the containerd socket for image management operations. The deployment runs with elevated privileges to access the host containerd daemon.

## Uninstallation

```bash
helm uninstall containerd-ui
```
