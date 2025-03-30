package kubernetes.deployments

deny[reason] {
  input.kind == "Deployment"
  input.spec.replicas != 1
  reason = "Deployment must have 1 replica."
}
