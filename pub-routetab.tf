resource "aws_route_table" "public" {
  vpc_id = aws_vpc.mainvpc.id
  tags = {
    Name = "lab1-public-route-table"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}