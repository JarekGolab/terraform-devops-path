resource "aws_vpc" "prod-vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy     = "default"
  tags = {
    Name = "${var.vpc_name}-vpc"
  }
}

resource "aws_subnet" "prod-subnet-public-1" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.public-subnet-a-cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "prod-subnet-public-1-name"
  }
}

resource "aws_subnet" "prod-subnet-public-2" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.public-subnet-b-cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_region}b"

  tags = {
    Name = "prod-subnet-public-2-name"
  }
}

resource "aws_subnet" "prod-subnet-private-1" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.private-subnet-a-cidr
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "prod-subnet-private-1-name"
  }
}

resource "aws_subnet" "prod-subnet-private-2" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.private-subnet-b-cidr
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}b"

  tags = {
    Name = "prod-subnet-private-2-name"
  }
}

resource "aws_subnet" "db-subnet-private-1" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.db-subnet-a-cidr
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "db-subnet-private-1-name"
  }
}

resource "aws_subnet" "db-subnet-private-2" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.db-subnet-b-cidr
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "db-subnet-private-2-name"
  }
}
