output "bastion_sg_id" {
  value = aws_security_group.Bastion.id
}

output "private_sg_id" {
  value = aws_security_group.private.id
}

output "test_sg_id" {
  value = aws_security_group.test.id
}

output "bastion_sg_name" {
  value = aws_security_group.Bastion.name
}