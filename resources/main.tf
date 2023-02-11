module "vpc" {
  source   = "../modules/vpc"
  project  = "jgolab"
  vpc_name = var.project


  enable_dns_support   = true
  enable_dns_hostnames = true

  public-subnet-a-name = "public-subnet-a"

  public-subnet-b-name = "public-subnet-b"

  private-subnet-a-name = "private-subnet-a"

  private-subnet-b-name = "private-subnet-b"

  db-subnet-a-name = "db-subnet-a"

  db-subnet-b-name = "db-subnet-b"



  cidr_block           = "172.39.0.0/16"
  public-subnet-a-cidr = "172.39.0.0/19"

  public-subnet-b-cidr = "172.39.32.0/19"

  private-subnet-a-cidr = "172.39.64.0/19"

  private-subnet-b-cidr = "172.39.96.0/19"

  db-subnet-a-cidr = "172.39.128.0/19"

  db-subnet-b-cidr = "172.39.160.0/19"


  nat-gateway = var.project
}

module "instance_ec2" {
  source = "../modules/ec2"

  project       = "jgolab"
  image         = "ami-0557a15b87f6559cf"
  key_name      = "jgolab"
  instance_name = "${var.project}-ec2"
}
