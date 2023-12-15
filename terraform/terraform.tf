terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "gitopsterrastate"
    key    = "terraform.tfstate"   #keep this name ,if we dont give ths name github will create this file locally and the person having the
    #same code will not have this .tfstate file.
    #infra will be created with the code but we dont have this .tfstate file and when we run this code again,again it will create infra.
    region = "us-east-2"
  }

  required_version = "~> 1.6.3"
}
##
##
##
