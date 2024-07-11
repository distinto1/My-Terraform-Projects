provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "east-2"
  region = "us-east-2"
}