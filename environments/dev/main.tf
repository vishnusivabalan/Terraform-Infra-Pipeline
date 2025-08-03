module "vpc" {
  source           = "../../modules/vpc"
  Env              = "dev"
  vpc_cidr         = "10.0.0.0/16"
  pubSubnet_cidr   = "10.0.0.1/24"
  pvtSubnet_cidr   = "10.0.0.2/24"
  subnet_aval_Zone = "${var.aws_region_name}a"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-015927f8ee1bc0293"
  instance_type = "t3.micro"
  subnet_id     = module.vpc.subnet_id
  ec2_count     = "1"
  Env           = "dev"
}