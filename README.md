# How deployment process works
- Use AWS CodeBuild to build and push docker image to AWS ECR
- Create AWS EKS Cluster and NodeGroup
- Connect to AWS EKS Cluster
- Install PostgresQL using helm
- Install application by applying manifest files inside deployment/ folder
# How to deploy change
- Create PR to trigger AWS CodeBuild to build new docker image
- Connect to AWS EKS Cluster
- Modify image tag inside deployment/application.yml
- Apply new change using `kubectl apply -f deployment/` command
- Verify application is deployed using `kubectl get pods` command