resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = var.public_subnet_1_cidr_block
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
  tags = {
    Name = "lab2-public-subnet"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = var.private_subnet_1_cidr_block
  availability_zone = "${var.region}a"
  tags = {
    Name = "lab2-private-subnet"
  }
}