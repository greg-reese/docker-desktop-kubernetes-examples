# Docker Desktop - Kubernetes - Terraform Examples

This is a repository for setting up a repository with particular modules for kubernetes to test locally via (terraform)[https://www.terraform.io/intro]. It uses [Helm](https://helm.sh/docs/) via the [helm_release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) object and [helm terraform provider](https://registry.terraform.io/providers/hashicorp/helm/latest/docs).

## Setup

1. [Install Docker Desktop](https://www.docker.com/products/docker-desktop/)
1. [Follow the steps to enable Kubernetes on Docker Desktop](https://docs.docker.com/desktop/kubernetes/)
1. Ensure that you have sufficient memory and cpu put aside for k8s. I would suggest at least 6CPUs, 5GB memory with 2GB swap.
1. run the following
```
terraform init
terraform apply
```

## A note

These are self-contained examples, so there might be work needed to tailor to your particular use case.