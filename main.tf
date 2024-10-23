# create an ec2 instance 
# where to create - provide the provider
provider "aws" {
  # which region to use to create infra 
  region = "eu-west-1"
}


# whch service/resources to create

resource "aws_instance" "app_instance" {

  # which AMI ID AMI ID ami-0c1c30571d2dae5c9 (for ubuntu 22.04 lts)
  ami = "ami-0c1c30571d2dae5c9"

  # what type of instance to launch - t2.micro
  instance_type = "t2.micro"
  # add a public iip to this instance
  associate_public_ip_address = true

  # name the service/resources  we create 
  tags = {
    Name = "tech-264-raiyan-tf-app-instance"
  }

}

# aws_access_key = xxX MUST NEVER DO 
# aws_secret_key = xxX MUST NEVER DO 
# syntax often used in hcl is key value 