resource "aws_instance" "my-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.ec2_count

  tags = {
    Name = "ec2${count.index}-${var.Env}"
    Env  = var.Env
  }
}