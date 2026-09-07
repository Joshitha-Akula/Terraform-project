terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "project_info" {
  filename = "${path.module}/terraform-output.txt"

  content = <<-EOT
  Infrastructure as Code Project

  VPC: 10.0.0.0/16
  Public Subnet: 10.0.1.0/24
  Private Subnet: 10.0.2.0/24

  Web Server: Public Subnet
  Database Server: Private Subnet
  EOT
}