terraform {
  backend "s3" {
    bucket       = "akshat-ameria-tf-bucket"
    region       = "ap-southeast-2"
    key          = "Akshat-Ameria-DevSecOps-Tetris-Project/Jenkins-Server-TF/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
  required_version = ">=1.13.3"
  required_providers {
    aws = {
      version = ">= 5.31.0"
      source  = "hashicorp/aws"
    }
  }
}