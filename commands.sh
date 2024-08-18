# Get the Node IP Address
kubectl get nodes -o wide

kubectl get pods -n ingress-nginx

kubectl edit pod ingress-nginx-controller-784997fdc7-tc4jc -n ingress-nginx

kubectl get ingress

# nslookup to get the ip addresses
nslookup <load-balancer>

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

# Verify Deployment
kubectl edit deploy go-web-app

# To delete Deployment with helm run this command
helm uninstall go-web-app