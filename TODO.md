# TODO: Fix and Connect Kubernetes and CI/CD

## Step 1: Update CI/CD Workflow
- [ ] Update .github/workflows/ci-cd.yml to use modern GitHub Actions (replace deprecated azure/docker-login@v1 with docker/login-action@v3)

## Step 2: Validate Kubernetes Manifests
- [ ] Validate k8s/deployment.yml syntax
- [ ] Validate k8s/service.yml syntax

## Step 3: Provide Secret Setup Instructions
- [ ] Update completion_todo.md with detailed steps for setting GitHub secrets (ACR_USERNAME, ACR_PASSWORD, KUBE_CONFIG)

## Step 4: Test and Verify
- [ ] Set up GitHub secrets as per instructions
- [ ] Trigger CI/CD pipeline on push to main
- [ ] Verify deployment: check pods, services, and access app via LoadBalancer IP
- [ ] Update TODO.md to mark tasks as completed
