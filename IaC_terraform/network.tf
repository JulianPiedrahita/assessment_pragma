resource "aws_vpc" "web" {
  cidr_block = var.vpc_web
  tags = {
    Name = "web-vpc"
  }
}

resource "aws_subnet" "web_sub_1" {
  vpc_id            = aws_vpc.web.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "web-subnet-1"
  }
}

resource "aws_subnet" "web_sub_2" {
  vpc_id            = aws_vpc.web.id
  cidr_block        = "10.0.20.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "web-subnet-2"
  }
}

resource "aws_subnet" "web_sub_3" {
  vpc_id            = aws_vpc.web.id
  cidr_block        = "10.0.30.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "web-subnet-3"
  }
}
