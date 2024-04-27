resource "aws_vpc" "vpc2" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name ="Prod-VPC"
    }
}

resource "aws_subnet" "pubsubnet" {
    vpc_id = aws_vpc.vpc2.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name ="Prod-Pub-Sub"
    }
}

resource "aws_subnet" "peisubnet" {
    vpc_id = aws_vpc.vpc2.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name ="Prod-Pri-Sub"
    }
}
resource "aws_internet_gateway" "IGW" {
    vpc_id = aws_vpc.vpc2.id
    tags = {
      Name ="Prod-IGW"
    }
  
}
resource "aws_route_table" "pubRT" {
  vpc_id = aws_vpc.vpc2.id
  tags = {
    Name = "Prod-pub-RT"
  }
  route  {
    cidr_block="0.0.0.0/0"
    gateway_id= aws_internet_gateway.IGW.id
  }
}
resource "aws_route_table_association" "RTass0" {
  route_table_id = aws_route_table.pubRT.id
  subnet_id = aws_subnet.pubsubnet.id
}