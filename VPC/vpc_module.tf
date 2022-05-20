resource "aws_vpc" "My-vpc" {
  cidr_block       = "70.0.0.0/27"
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc"
  }
}
