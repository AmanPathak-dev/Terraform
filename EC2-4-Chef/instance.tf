resource "aws_instance" "Chef-Workstation" {
  ami             = "ami-09d56f8956ab235b3"
  instance_type   = "t2.micro"
  key_name        = "Aman-Pathak"
  subnet_id       = aws_subnet.Public-Subnet.id
  security_groups = [aws_security_group.SG.id]

  tags = {
    Name = "Chef-Workstation"
  }
}


resource "aws_instance" "chef-node" {
  ami             = "ami-09d56f8956ab235b3"
  instance_type   = "t2.micro"
  key_name        = "Aman-Pathak"
  subnet_id       = aws_subnet.Public-Subnet.id
  security_groups = [aws_security_group.SG.id]

  tags = {
    Name = "Chef-Node" 
  }
}