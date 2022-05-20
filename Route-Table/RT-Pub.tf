resource "aws_route_table" "Pub-RT" {
  vpc_id = aws_vpc.My-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.My-IGW.id
  }

  tags = {
    Name = "Pub-RT"
  }
}
