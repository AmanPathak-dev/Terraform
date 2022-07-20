resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "VPC"
  }
}

resource "aws_internet_gateway" "IG" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "IG"
  }
}

resource "aws_subnet" "Public-Subnet1" {
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  vpc_id                  = aws_vpc.vpc.id
  tags = {
    Name = "Public-Subnet1"
  }
}

resource "aws_subnet" "Public-Subnet2" {
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  vpc_id                  = aws_vpc.vpc.id
  tags = {
    Name = "Public-Subnet2"
  }
}


resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG.id
  }
}

resource "aws_route_table_association" "RT-Association1" {
  subnet_id      = aws_subnet.Public-Subnet1.id
  route_table_id = aws_route_table.RT.id
}

resource "aws_route_table_association" "RT-Association2" {
  subnet_id      = aws_subnet.Public-Subnet2.id
  route_table_id = aws_route_table.RT.id
}

