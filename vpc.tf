resource "aws_vpc" "vpc1" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "Name" = "Fusion-PROD-VPC"
    }
  
}
 resource "aws_subnet" "subnet" {
  vpc_id = "vpc-0fd4e4ef1afad71bf"
  availability_zone = "ap-south-1a"
  cidr_block = "10.0.1.0/24"
  tags = {
    "Name"="Fusion-PROD-PUB-SUB"
  }
   
 }