provider "aws" {
  region     = "us-east-2"
  access_key = "AKI*************UC"
  secret_key = "9ZBKV*************7CxwS4Q"
}

resource "aws_instance" "tomcat" {
  ami                    = "ami-019a4607ba39bfde6"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.Pub-sub.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "tomcat"
  }
}
