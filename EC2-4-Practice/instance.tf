resource "aws_instance" "EC2-Instance" {
  ami             = var.ami
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.subnet.id
  security_groups = [aws_security_group.SG.id]
  key_name = "Aman-Pathak"

  tags = {
    Name = "Aman-EC2"
  }
}