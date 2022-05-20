resource "aws_subnet" "Pub-sub" {
  vpc_id                  = aws_vpc.My-vpc.id
  cidr_block              = "70.0.0.0/28"
  map_public_ip_on_launch = true
  tags = {
    Name = "Pub-sub"
  }
}
