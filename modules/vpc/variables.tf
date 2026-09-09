variable "vpc_cidr" {
  description = "CIDR block for Vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet's cidr"
  type = string
  default = "10.1.0.0/24"
}

variable "private_subnet_cidr" {
  description = "private subnet's cidr"
  type        = string
  default = "10.2.0.0/24"
}

