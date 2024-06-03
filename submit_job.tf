# submit_job.tf
resource "null_resource" "submit_job" {
  provisioner "local-exec" {
    command = <<EOT
      aws batch submit-job --job-name test-job-01 --job-queue ${aws_batch_job_queue.example.name} --job-definition ${aws_batch_job_definition.example.arn}
    EOT
  }
  depends_on = [
    aws_batch_compute_environment.example,
    aws_batch_job_definition.example,
  ]
}
