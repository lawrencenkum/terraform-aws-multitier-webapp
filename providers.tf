provider "aws" {
  region  = "us-east-1"
  profile = "terraform_dev"

  default_tags {
    tags = {
      Project   = "tf-capstone"
      ManagedBy = "terraform"
      Owner     = "lawrence"
    }
  }
}