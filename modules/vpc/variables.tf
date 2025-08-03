variable "Env" {
  type        = string
  description = "Env type"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC cidr"
}

variable "pvtSubnet_cidr" {
  type        = string
  description = "Private Subnet cidr"
}

variable "pubSubnet_cidr" {
  type        = string
  description = "Public Subnet cidr"
}

variable "subnet_aval_Zone" {
  type = string
  description = "Avail of the subnet"
}