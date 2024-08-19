# Install EKS

Please follow the prerequisites doc before this.

## Install a EKS cluster with EKSCTL

```
eksctl create cluster --name demo-cluster --region us-east-1 
```
If you want to use AWS Fargate
```
eksctl create cluster --name demo-cluster --region us-east-1  --fargate
```

## Delete the cluster

```
eksctl delete cluster --name demo-cluster --region us-east-1
```