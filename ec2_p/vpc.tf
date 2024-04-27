resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Prod-VPC"
  }
}
 resource "aws_subnet" "subPub" {
   vpc_id = aws_vpc.vpc1.id
   availability_zone = "ap-south-1a"
   cidr_block = "10.0.1.0/24"

   tags = {
     Name = "Prod-sub-pub"
   }
 }