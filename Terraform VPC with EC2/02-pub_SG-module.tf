module "pub_SG" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name        = var.pub_sg_name
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]

  #egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules = ["all-all"]
  tags = local.tags
}
