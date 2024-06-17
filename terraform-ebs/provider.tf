provider "aws" {
  region = "us-east-1"
}
 
terraform {
  backend "s3" {
    bucket         = "terraform-bucket-bcs-demo"
    key            = "tf/terraformebs.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}