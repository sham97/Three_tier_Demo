output "security_group_arn" {
  description = "The ARN of the public security group"
  value       = module.pub_SG.security_group_arn
}

output "security_group_id" {
  description = "The ID of the public security group"
  value       = module.pub_SG.security_group_id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = module.pub_SG.security_group_name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = module.pub_SG.security_group_description
}
output "pr_security_group_arn" {
  description = "The ARN of the security security group"
  value       = module.private_sg.security_group_arn
}

output "pr_security_group_id" {
  description = "The ID of the security security group"
  value       = module.private_sg.security_group_id
}
output "pr_security_group_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}

output "pr_security_group_description" {
  description = "The description of the security group"
  value       = module.private_sg.security_group_description
}