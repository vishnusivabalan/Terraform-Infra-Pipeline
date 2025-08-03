resource "aws_vpc" "my-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "vpc-${var.Env}"
  }
}

resource "aws_subnet" "my-pvtSubnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.pvtSubnet_cidr

  tags = {
    Name = "Private Subnet-${var.Env}"
  }
}

resource "aws_subnet" "my-pubSubnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.pubSubnet_cidr
  availability_zone = var.subnet_aval_Zone
  tags = {
    Name = "Public Subnet-${var.Env}"
  }
}

output "subnet_id" {
  value       = aws_subnet.my-pubSubnet.id
  description = "My ec2 will be created in the subnet"

}