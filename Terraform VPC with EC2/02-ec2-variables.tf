variable "Public-ec2_name" {
type = string
description = "Name to be used on public EC2 instance created"
}

variable "ec_type" {
  type = string
  description = "The type of public instance to start"
}

variable "Private-ec2_name" {
type = string
description = "Name to be used on private EC2 instance created"
}

variable "key" {
  type = string
  default = "Terraform_key"

}
variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type = number
  default = 2  
}