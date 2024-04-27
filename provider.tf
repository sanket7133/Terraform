terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "~>5.46.0" #~> for taking latest minor changes 
    }
  }
}

provider "aws" {
    #authentication
    region = "ap-south-1"
   #1 st method , not secure
    # access_key = ""
    # secret_key = ""

    #2 method 
    profile = "sanket"
}