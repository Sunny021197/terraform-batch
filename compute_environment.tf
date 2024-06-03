# compute_environment.tf
resource "aws_batch_compute_environment" "example" {
  compute_environment_name = "test-compute-environment-sunny"
  type                     = "MANAGED"

  compute_resources {
    type              = "FARGATE"
    max_vcpus         = 16
    subnets           = ["subnet-0d0faec25263c6f3a", "subnet-03a57dd265b29b909"]
    security_group_ids = ["sg-061cf9843e355a501"]
  }

  service_role = aws_iam_role.batch_service_role.arn

  depends_on = [
    aws_iam_role.batch_service_role,
    aws_iam_role_policy_attachment.service_role_policy
  ]
}
