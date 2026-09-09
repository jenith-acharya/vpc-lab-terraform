module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
}

module "security_groups" {
  source = "./modules/security"

  vpc_id      = module.vpc.vpc_id
  my_ip       = var.my_ip
}

module "bastion_host" {
  source = "./modules/ec2"

  instance_name      = "Bastion Host"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_groups.bastion_sg_id]
  key_name           = var.key_name
  associate_public_ip = true
  user_data          = <<-EOF
    #!/bin/bash
    yum update -y
    echo "Bastion Host initialized"
  EOF
}

module "private_instance" {
  source = "./modules/ec2"

  instance_name      = "Private Instance"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.private_subnet_id
  security_group_ids = [module.security_groups.private_sg_id]
  key_name           = var.key_name_private
  associate_public_ip = false
  user_data          = <<-EOF
    #!/bin/bash
    yum update -y
    echo "Private Instance initialized"
  EOF
}

module "test_instance" {
  source = "./modules/ec2"

  instance_name      = "Test Instance"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_groups.test_sg_id]
  key_name           = var.key_name
  associate_public_ip = true
  user_data          = <<-EOF
    #!/bin/bash
    yum update -y
    echo "Test Instance initialized"
  EOF
}


