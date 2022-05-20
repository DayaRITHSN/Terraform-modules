resource "aws_subnet" "Pri-sub" {
  vpc_id     = aws_vpc.My-vpc.id
  cidr_block = "70.0.0.16/28"

  tags = {
    Name = "Pri-sub"
  }
}
