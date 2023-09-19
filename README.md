# Terraform_start

Create 3 EC2 instances on aws with terraform
I created it with ssh key

Steps:
generate ssh key on local machine

After that i enter the pub key into  variable.tf




This file create aws_key_pair and 3 EC2 that associate with 
This Key pair

after you run i ones, you cant create keypair with the same name 

Main.tf


provider "aws" {
  region = "us-west-2"
}
resource "aws_key_pair" "demo_key_pair" {
  key_name   = var.key_pair_name
  public_key = var.public_key
}
resource "aws_instance" "instance1" {
  ami           = "ami-0b2b4f610e654d9ac"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.demo_key_pair.key_name
  tags = {
    name = "benny-hill-instance"
  }
}
resource "aws_instance" "instance2" {
  ami           = "ami-0b2b4f610e654d9ac"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.demo_key_pair.key_name
  tags = {
    name = "benny-instance2"
  }
}
resource "aws_instance" "instance3" {
  ami           = "ami-0b2b4f610e654d9ac"
  instance_type = "t2.micro"
  tags = {
    name = "ofer-instance3"
  }
}



Variable.tf

variable "key_pair_name" {
  type    = string
  default = "demokeypair"
}
variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCjaU/RhZ92zoWXfdvVwavHiTJAqCJlVkhrX243Jkc9r1y6wmCJv3BsHzVeztf3X5BAThdtnxbC5AQ0wopOvFLrZ0L1W5X6jPdf4dcPcEnfEhov6TG8v2kgSzchPej7H5Mp4HvkGhskXYgCx+fuTwNtTF3L0RAiRxWGMj3L6FlSe53kzDKzmSs+otWISazZ5oFZ5TeZFJYBfeEEN4nHVaN7ghOF0xXeRmuDqRHdEk9P2ZpQWWaiDLqlEMlODI1XiJuX7aF7l76VeCZZn4YAVLgB/Gu+JvndRbd9WyR3I/ExjMqq24JgqTMMI7LWdMDpea2c+Ue+qx1a7lNqN1ei88o3YyfY7nKZE7I91YKDXC6iJiLFFLjs9dfLXpIX09XpaNmIq3vrf3ptqpQjl/SIAs0ZlgFuRJFQd/W69CLafynyQHmPXostOhtx+dINKh+d3eqbsIX0Scu5i9cR7ce9gGMWFL0BHIcwWA0l+Q5fE0gbIoV3UT5LNSE6NffUloJYBqdmtxf9ve8dqZpZxihvnHcxaxA+t+XQSW12BvNKZknhdo8fkHFPBFxGpDDgV7pC220kypm8RzuJWSrh2IAu7vTF599/TA8l/3X/X4d09ljx0p3r1sp7bQeV1WNAd5uAp/PGcMCtNnlPg+AOLJhwKvSgMEsvRdvENLLeEbT2WnbSnQ== benny@DESKTOP-LV65TID"
}
variable "already_created_key_pair_name" {
  type    = string
  default = "demokeypair"
}





after you run i ones, you cant create keypair with the same name so:


Rmove the section that create this key:



provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "instance1" {
  ami           = "ami-0b2b4f610e654d9ac"
  instance_type = "t2.micro"
  key_name      =  var.already_created_key_pair_name
  tags = {
    name = "benny-hill-instance"
  }
}
resource "aws_instance" "instance2" {
  ami           = "ami-0b2b4f610e654d9ac"
  instance_type = "t2.micro"
  key_name      = var.already_created_key_pair_name
  tags = {
    name = "benny-instance2"
  }
}
resource "aws_instance" "instance3" {
  ami           = "ami-0b2b4f610e654d9ac"
  instance_type = "t2.micro"
  key_name      = var.already_created_key_pair_name
  tags = {
    name = "ofer-instance3"
  }
}


And use the kay that we already created


  key_name      = var.already_created_key_pair_name




To run terraform need to:
install terraform (its just one file "terraform.exe" and need to add env var for that)


Need to connect the terraform to your aws account
After that run from main.tf folder:



After that run:
terraform init
terraform plan
terraform apply

I created



Connect to ec2 with ssh:
First you need to open ssh port on security group that the EC2 associate with
Then  

	1) On ec2 search the ec2 S"G than cliack add role and add SSH with port 22
than

ssh -i .\aws_ec2 ec2-user@52.40.123.69


![Uploading image.png…]()
