

resource "aws_instance" "jenkins-instance1" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.medium"
  //subnet_id     = "subnet-0317ab2afcac29463"
  tags = {
    Name = "venu-vm"
  }
}
  


  provider "aws" {
  region = "us-east-1"
}


terraform {
  cloud {
    organization = "vb-org"

    workspaces {
      name = "vb-tfm"
    }
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
    
    
  }
}
