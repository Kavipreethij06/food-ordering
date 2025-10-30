# TODO for Food Order Website - Phases 4-6

## Phase 4: Configuration Management
- [x] Create k8s/deployment.yml: Kubernetes Deployment manifest for the foodordering app using ACR image
- [x] Create k8s/service.yml: Kubernetes Service manifest with LoadBalancer type
- [x] Create ansible/playbook.yml: Ansible playbook to deploy the K8s manifests using kubectl apply

## Phase 5: CI/CD Pipeline Setup
- [x] Create .github/workflows/ci-cd.yml: GitHub Actions workflow to:
  - Build Docker image on push
  - Push to Azure Container Registry (ACR)
  - Deploy to Azure Kubernetes Service (AKS) using kubectl
  - Include deployment verification (kubectl get pods, svc)
- [ ] Set up GitHub Secrets for ACR login (ACR_USERNAME, ACR_PASSWORD) and AKS kubeconfig (KUBE_CONFIG)

## Phase 6: Deployment and Validation
- [ ] Test Ansible playbook locally (if possible) or in CI/CD
- [ ] Verify deployment: Check pods and services in AKS
- [ ] Access the app via LoadBalancer public IP
- [ ] Update README.md with deployment instructions and phases completed

## General
- [ ] Ensure all files are committed and pushed to GitHub
- [ ] Test the full pipeline on a push event
