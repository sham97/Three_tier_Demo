resource "null_resource" "null" {
  depends_on = [module.public_ec2]

  connection {
    type     = "ssh"
    host     = aws_eip.bastion_eip.public_ip    
    user     = "ubuntu"
    password = ""
    private_key = file("private-key/Terraform_key.pem")
  }

  provisioner "file" {
    source = "private-key/Terraform_key.pem"
    destination = "/tmp/Terraform_key.pem"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 600 /tmp/Terraform_key.pem"
    ]
  }

  provisioner "local-exec" {
    command = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    
    working_dir = "local-exec-output/"
  }


}