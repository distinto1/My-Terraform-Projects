terraform {
  required_version = "~>1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.5"
    }
    http = {
      source  = "hashicorp/http"
      version = "~>3.4.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "~>2.4.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
  }
}