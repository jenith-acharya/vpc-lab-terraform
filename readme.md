# VPC Networking Environment for Café

## Overview
This Terraform project creates a complete VPC networking environment for the café application, following AWS best practices for security and network architecture.

## Architecture Components
- VPC with CIDR 10.0.0.0/16
- Public Subnet (10.0.0.0/24)
- Private Subnet (10.0.1.0/24)
- Internet Gateway for public access
- NAT Gateway for private subnet internet access
- Bastion Host in public subnet
- Private EC2 instance in private subnet
- Test EC2 instance in public subnet
- Security Groups with least privilege access
- Custom Network ACL for additional security

## Prerequisites
- Terraform v1.0+
- AWS CLI configured with appropriate credentials
- AWS Key Pairs (vockey and vockey2)

## Usage

### 1. Clone the repository
```bash
git clone https://github.com/jenith-acharya/vpc-lab-terraform/
cd terraform-vpc-lab
