output "project_file" {
  description = "Generated Terraform project file"
  value       = local_file.project_info.filename
}