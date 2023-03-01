resource "aws_eip" "bastion_eip" {
  depends_on = [module.public_ec2,module.vpc ]
 # instance = module.public_ec2.id[0]
 instance = module.public_ec2.id
  vpc = true
  tags = local.tags
  
  provisioner "local-exec" {
    command =  "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output/"
    when = destroy
  }
}