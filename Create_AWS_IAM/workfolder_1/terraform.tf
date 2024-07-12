terraform {
  required_version = "~>1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.5"
    }
   
    local = {
      source  = "hashicorp/local"
      version = "~>2.4.1"
    }
   
  }
}