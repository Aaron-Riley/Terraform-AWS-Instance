terraform {
    backend "remote" {
        organization = "ExampleOrg"
        workspaces {
            name = "example"
        }
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d72e56c52c35a1a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
