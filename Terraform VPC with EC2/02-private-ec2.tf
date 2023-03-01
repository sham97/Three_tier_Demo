module "private_ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name                        = var.Private-ec2_name
  for_each = toset(["0", "1"])

  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = var.ec_type
  key_name                    = var.key 
 
  vpc_security_group_ids = [module.private_sg.security_group_id]
  subnet_id =  element(module.vpc.private_subnets, tonumber(each.key))
  
  # subnet_ids = [
  #   module.vpc.private_subnets[0],
  #   module.vpc.private_subnets[1]
  # ]  
  #nstance_count         = var.private_instance_count
  user_data = file("${path.module}/web.sh")
  tags = local.tags
}