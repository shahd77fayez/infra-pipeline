terraform {
  backend "s3" {
    bucket         = "terrf-bucket-lab1"
    key            = "terraform.key"
    region         = "us-east-1"
    profile       = "default"
  }
}