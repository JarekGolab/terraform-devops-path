variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_name" {}

variable "enable_dns_support" {
  default = "true"

}

variable "enable_dns_hostnames" {
  default = "true"

}
variable "project" {}

variable "cidr_block" {}

variable "public-subnet-a-name" {}

variable "public-subnet-b-name" {}

variable "private-subnet-a-name" {}

variable "private-subnet-b-name" {}

variable "db-subnet-a-name" {}

variable "db-subnet-b-name" {}

variable "nat-gateway" {}


variable "public-subnet-a-cidr" {}

variable "public-subnet-b-cidr" {}

variable "private-subnet-a-cidr" {}

variable "private-subnet-b-cidr" {}

variable "db-subnet-a-cidr" {}

variable "db-subnet-b-cidr" {}

variable "MongoDbPort" {
  default = "27017"
}
variable "DatabasePort" {
  default = "5432"
}






