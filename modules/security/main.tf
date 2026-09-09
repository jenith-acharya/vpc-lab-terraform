resource "aws_security_group" "Bastion" {
  name        = "Bastion-host SG"
  description = "Security Group for Bastion host"
  vpc_id      = var.vpc_id

  tags = {
    Name = "Bastionhost-SG"
  }
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.my_ip]
  
  }


   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


}

resource "aws_security_group" "private" {
  name        = "Private SG"
  description = "Security Group for Priavte subnet"
  vpc_id      = var.vpc_id

  tags = {
    Name = "Private-SG"
  }

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups = [aws_security_group.Bastion.id]
  }

ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "imcp"
    cidr_blocks      = [var.vpc_cidr]
    security_groups  = [aws_security_group.Bastion.id]
  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}
  resource "aws_security_group" "test" {
  name        = "Test SG"
  description = "Security group for test instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["10.0.0.0/16"]
    description = "ICMP from VPC"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
    description = "SSH from my IP"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Test SG"
  }
  }



