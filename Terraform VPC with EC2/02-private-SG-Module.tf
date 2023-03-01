module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name        = var.pr_sg_name
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  egress_rules = ["all-all"]

 
  
  tags = local.tags
}
