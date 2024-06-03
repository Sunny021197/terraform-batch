# job_definition.tf
resource "aws_batch_job_definition" "example" {
  name       = "test-job-definition"
  type       = "container"

  container_properties = jsonencode({
    image                = "busybox",
    resourceRequirements = [
      {
        type  = "VCPU",
        value = "0.25"
      },
      {
        type  = "MEMORY",
        value = "512"
      }
    ],
    executionRoleArn = "arn:aws:iam::561750529742:role/test-ecs-tasks-sunny"
    command              = ["echo", "hello world"],
    networkConfiguration = {
      assignPublicIp = "ENABLED"
    }
  })

  platform_capabilities = ["FARGATE"]
}
