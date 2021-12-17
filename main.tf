terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance123"
  }
}

resource "aws_s3_bucket" "mybucket123chan" {
    bucket = "my-tf-test-bucket123chan123"
    acl = "private"

    tags = {
        Name = "TestBucket"
        Env = "Test"
    }
  
}

