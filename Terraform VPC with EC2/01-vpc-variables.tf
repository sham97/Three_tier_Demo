variable "cidr"{
  description = "CIDR block for entire vpc"
  type = string
  
}

variable "vpc_name" {
  description = "name of the vpc"
  type = string

}

variable "pub_sub" {
  description = "public subnet"
  type = list(string)
  default = []
}

variable "pri_sub" {
  description = "private sub"
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  description = "name of the vpc"
  type = list(string)

}
variable "db_sub" {
  description = "private sub"
  type = list(string)
}

variable "create_databasesubnetgroup" {
  description = "Controls if database subnet group should be created (n.b. database_subnets must also be set)"
  type = bool
}

variable "subnet_route_table" {
  description = " Controls if separate route table for database should be created"
  type = bool
}

