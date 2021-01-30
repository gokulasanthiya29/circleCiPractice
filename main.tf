provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "terraform-provisioned-EC2" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"

  tags = {
    Name = "Hi! I'm the EC2 instance provisioned by Terraform."
  }
}