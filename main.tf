
resource "aws_instance" "jenkins-instance1" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.medium"
  //subnet_id     = "subnet-0317ab2afcac29463"
  tags = {
    Name = "venu-vm"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  provider "aws" {
  region = "var.aws_region"
}
}

terraform {
  cloud {
    organization = "vb-org"

    workspaces {
      name = "vb-tfm"
    }
  }
}
