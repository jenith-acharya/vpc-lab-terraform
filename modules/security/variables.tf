variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "my_ip" {
  description = "My IP address for SSH access"
  type        = string
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}
