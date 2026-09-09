variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string

}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string

}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  
}


variable "key_name" {
  description = "Key pair name"
  type        = string
}


variable "associate_public_ip" {
  description = "Whether to associate public IP"
  type        = bool
  default     = false
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name"
  type        = string
}