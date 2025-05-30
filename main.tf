terraform {
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
  access_key = ${ACCESS_KEY}
  secret_key = ${SECRET_KEY}
}

resource "aws_instance" "app_server" {
  ami           = "ami-04999cd8f2624f834"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Primeira instancia"
  }
}