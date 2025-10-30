# Food Ordering Website

A simple static website for ordering food, containerized and deployed on Azure Kubernetes Service (AKS).

## Project Phases Completed

### Phase 1: Source Code and Version Control
- Created a static HTML/CSS website for food ordering.
- Initialized Git repository and pushed to GitHub.
- Used branches, commits, and pull requests for collaboration.

### Phase 2: Containerization
- Wrote a Dockerfile using nginx:alpine to serve static files.
- Built and ran the Docker image locally.
- Pushed the image to Azure Container Registry (ACR) as `foodorder.azurecr.io/foodordering:latest`.

### Phase 3: Infrastructure Provisioning (IaC)
- Used Terraform to create:
  - Resource Group: `foods`
  - Azure Container Registry (ACR): `foodorder`
  - Azure Kubernetes Service (AKS)
- Applied configurations with `terraform init` and `terraform apply`.

### Phase 4: Configuration Management
- Created Kubernetes manifests:
  - `k8s/deployment.yml`: Deployment with 3 replicas using ACR image
  - `k8s/service.yml`: LoadBalancer service exposing port 80
- Created Ansible playbook (`ansible/playbook.yml`) to automate deployment using `kubectl apply`.

### Phase 5: CI/CD Pipeline Setup
- Set up GitHub Actions workflow (`.github/workflows/ci-cd.yml`):
  - Builds Docker image on push to main branch
  - Pushes to ACR
  - Deploys to AKS using kubectl
  - Includes deployment verification and status checks
- Requires GitHub Secrets:
  - `ACR_USERNAME` and `ACR_PASSWORD` for ACR login
  - `KUBE_CONFIG` for AKS access

### Phase 6: Deployment and Validation
- Deploy to AKS using the CI/CD pipeline or Ansible playbook.
- Verify deployment with:
  ```bash
  kubectl get pods
  kubectl get svc
  ```
- Access the app using the LoadBalancer public IP.

## Local Development

1. Clone the repository.
2. Open `index.html` in a browser to view the site.
3. To run with Docker locally:
   ```bash
   docker build -t foodordering .
   docker run -p 80:80 foodordering
   ```
   Visit `http://localhost`.

## Deployment

Ensure you have access to the AKS cluster and ACR.

### Using Ansible
```bash
ansible-playbook ansible/playbook.yml
```

### Using kubectl directly
```bash
kubectl apply -f k8s/deployment.yml
kubectl apply -f k8s/service.yml
kubectl wait --for=condition=available --timeout=300s deployment/foodordering-deployment
kubectl get svc foodordering-service
```

## Technologies Used
- HTML/CSS for frontend
- Docker for containerization
- Azure Container Registry for image storage
- Kubernetes for orchestration
- Ansible for configuration management
- GitHub Actions for CI/CD
- Azure Kubernetes Service for deployment
