provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "latest" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }
}
# "ami-04505e74c0741db8d"
resource "aws_instance" "ec2" {
  ami           = data.aws_ami.latest.id
  instance_type = "t2.micro"
  tags = {
    name = "Aman-EC2"
  }
  key_name = "Aman-Pathak"
}