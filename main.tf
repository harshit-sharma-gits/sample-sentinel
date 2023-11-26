terraform {
  cloud {
    organization = "example-org-f0518d"

    workspaces {
      name = "sentinel-test"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0287a05f0ef0e9d9a"
  instance_type = "t2.micro"

  tags = {
   Name = "SentinelExample"
  }
}
