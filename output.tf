# outputs.tf
output "compute_environment_arn" {
  value = aws_batch_compute_environment.example.arn
}

output "job_queue_arn" {
  value = aws_batch_job_queue.example.arn
}

output "job_definition_arn" {
  value = aws_batch_job_definition.example.arn
}
