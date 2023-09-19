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