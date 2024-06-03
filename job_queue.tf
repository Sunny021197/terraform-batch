# job_queue.tf
resource "aws_batch_job_queue" "example" {
  name                 = "test-job-queue"
  state                = "ENABLED"
  priority             = 1
  compute_environment_order {
    order               = 1
    compute_environment = aws_batch_compute_environment.example.arn
  }
}
