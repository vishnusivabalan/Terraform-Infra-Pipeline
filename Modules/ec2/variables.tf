variable "ami_id" {
  type = string
  description = " ami id of my ec2"
}

variable "instance_type" {
  type = string
  description = "Instance type of my ec2"
}

variable "subnet_id" {
  type = string
  description = "Subnet id of my ec2"
}
variable "ec2_count" {
  type = string
  description = "Total number of my ec2"
}

variable "Env" {
  type = string
  description = "Env type"
}
