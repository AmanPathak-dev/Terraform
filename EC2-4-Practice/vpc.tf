resource "aws_vpc" "vpc" {
  cidr_block = var.cidr-block

  tags = {
    "Name" = "Aman-VPC"
  }
}

resource "aws_internet_gateway" "IG" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "IG-Aman"
  }
}


resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr-block-subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet1"
  }
}

resource "aws_route_table" "RT" {

  vpc_id = aws_vpc.vpc.id

  route {
    gateway_id = aws_internet_gateway.IG.id
    cidr_block = var.cidr-block-gateway
  }
}


resource "aws_route_table_association" "RT-A" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.RT.id
}


