resource "aws_route_table" "Pri-RT" {
  vpc_id = aws_vpc.My-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.My-NAT.id
  }

  tags = {
    Name = "Pri-RT"
  }
}

resource "aws_internet_gateway" "My-IGW" {
  vpc_id = aws_vpc.My-vpc.id

  tags = {
    Name = "My-IGW"
  }
}
