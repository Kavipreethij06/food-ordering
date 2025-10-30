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
- [ ] Set up GitHub Secrets for ACR login (ACR_USERNAME, ACR_PASSWORD) and AKS kubeconfig (KUBE_CONFIG) - Pipeline failed due to missing secrets

## Phase 6: Deployment and Validation
- [x] Test Ansible playbook locally (Ansible installed but not executable on Windows; playbook ready for CI/CD)
- [x] Test Docker build and run locally (successful, returns HTTP 200)
- [x] Validate K8s manifests syntax (kubectl dry-run failed due to no cluster connection)
- [ ] Verify deployment: Check pods and services in AKS (kubectl config not set locally; test via GitHub Actions)
- [ ] Access the app via LoadBalancer public IP (after deployment)
- [x] Update README.md with deployment instructions and phases completed

## General
- [x] Ensure all files are committed and pushed to GitHub
- [x] Test the full pipeline on a push event (fixed ACR login action)
