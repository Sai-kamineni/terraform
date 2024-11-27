terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
    backend "s3" {
    bucket = "81s-remote-state"
    key    = "remote-state-demo"   #unique name
    region = "us-east-1"
    dynamodb_table =  "81s-locking"             #table space seperately taken 
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}