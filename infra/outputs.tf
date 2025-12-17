# VPC Outputs
output "vpc_id" { value = module.vpc.vpc_id }
output "public_subnet_ids" { value = module.vpc.public_subnet_ids }
output "private_subnet_ids" { value = module.vpc.private_subnet_ids }

# Security Groups
output "eks_cluster_security_group_id" { value = module.security.eks_cluster_security_group_id }
output "rds_security_group_id" { value = module.security.rds_security_group_id }

# RDS
output "rds_endpoint" { value = module.rds.db_instance_endpoint }
output "rds_database_name" { value = module.rds.db_instance_name }
output "rds_address" { value = module.rds.db_instance_address }

# EKS
output "eks_cluster_name" { value = module.eks.cluster_name }
output "eks_cluster_endpoint" { value = module.eks.cluster_endpoint }
output "eks_cluster_id" { value = module.eks.cluster_id }

# Kubectl configuration command
output "configure_kubectl" {
  value = "aws eks update-kubeconfig --region ${var.aws_region} --name ${module.eks.cluster_name}"
}
