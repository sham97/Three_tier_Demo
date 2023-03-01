module "public_ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name                        = var.Public-ec2_name

  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = var.ec_type
  key_name                    = var.key 
  #count = 1

  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [module.pub_SG.security_group_id]

  associate_public_ip_address = true

  tags = local.tags
}