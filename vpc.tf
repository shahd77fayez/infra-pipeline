resource "aws_vpc" "mainvpc" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "lab1-vpc"
  }
}