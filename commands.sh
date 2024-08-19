# Get the Node IP Address
kubectl get nodes -o wide

kubectl get pods -n ingress-nginx

kubectl edit pod ingress-nginx-controller-784997fdc7-tc4jc -n ingress-nginx

kubectl get ingress
kubectl get pods -n ingress-nginx

# nslookup to get the ip addresses
nslookup a9cb20380b2a14fc29e7d89278a855eb-ac07c191ffb83b0b.elb.us-east-1.amazonaws.com

sudo vi /etc/host/
# Map the ip addresses to the hostname

# Create a helm chart 
mkdir helm
cd helm
helm create go-web-app-chart

# remove all files from templates and replace it with k8s/manifest files
rm -rf templates/*
cp -r ../../k8s/manifest/* templates/

# Update the values.yaml file with your desired configurations
vi values.yaml

# Install the chart
helm install go-web-app ./go-web-app-chart
helm install go-web-app-chart ./go-web-app-chart -f values.yaml

# Uninstall deployment with helm
helm uninstall go-web-app

# Verify Deployment
kubectl edit deploy go-web-app

# To delete Deployment with helm run this command
helm uninstall go-web-app

# Fetch the secret of argocd server
argocd-initial-admin-secret
kubectl edit secret argocd-initial-admin-secret -n argocd
# Copy password b2RXcUxrZzdhNWlmeEp4WQ==
# Decode Password
echo eVRXdW5Ya3hlbkNQcW5NVQ== | base64 --decode  #yTWunXkxenCPqnMU

# Get Port of Argocd server
kubectl get svc -n argocd argocd-server #30557
kubectl get svc -n argocd argocd-server -o jsonpath="{.spec.ports[0].nodePort}"
# Fetch IP Address of Nodes
kubectl get nodes -o wide
# Access Argocd Server
http://<NodeIP>:<Port>