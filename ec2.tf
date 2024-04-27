resource "aws_instance" "ec2" {
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"
    subnet_id = "subnet-062b49401ce08b90e"
    key_name = "key"
    
  
}