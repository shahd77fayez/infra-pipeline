resource "aws_eip" "nat_eip" {
  domain = "vpc"
}
resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id
  connectivity_type = "public"

  tags = {
    Name = "gw NAT"
  }

  
  depends_on = [aws_internet_gateway.gw]
}