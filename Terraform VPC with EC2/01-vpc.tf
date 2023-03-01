module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  name = var.vpc_name
  cidr = var.cidr

  azs                 = var.azs
  private_subnets     = var.pri_sub
  public_subnets      = var.pub_sub
  database_subnets    = var.db_sub
  

  create_database_subnet_route_table = var.subnet_route_table
  create_database_subnet_group = var.create_databasesubnetgroup

  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway = true
  single_nat_gateway = true

   tags = local.tags

   public_subnet_tags = {
    type = "public subnets"
   }
   private_subnet_tags = {
    type = "private subnets"
   }
   database_subnet_tags = {
    type = "database subnets"
   }
}