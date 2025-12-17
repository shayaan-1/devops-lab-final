variable "project_name" { type = string }
variable "environment" { type = string }
variable "cluster_name" { type = string }
variable "subnet_ids" { type = list(string) }
variable "node_instance_type" { type = string }
variable "desired_capacity" { type = number }
variable "max_capacity" { type = number }
variable "min_capacity" { type = number }
