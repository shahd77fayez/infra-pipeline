resource "aws_route_table" "private" {
  vpc_id = aws_vpc.mainvpc.id
  tags = {
        Name = "lab1-private-route-table"
}
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.example.id
  }
}