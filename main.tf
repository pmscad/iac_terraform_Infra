terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      }
  }

  backend "remote" {
    organization = "Qinetiq_Orion"

    workspaces {
      name = "LogR-Cherwell"
    }
  }
}

provider    "aws"   {
    region  =   "us-west-2"
}

resource    "aws_instance"  "server-1" {
    ami =   "ami-830c94e3"
    instance_type   = "t2.nano"
    tags    =   {
        Name    =   "server"
    }
}
