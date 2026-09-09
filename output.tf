output "bastion_public_ip" {
  value = module.bastion_host.public_ip
}

output "bastion_private_ip" {
  value = module.bastion_host.private_ip
}

output "private_instance_private_ip" {
  value = module.private_instance.private_ip
}

output "test_instance_private_ip" {
  value = module.test_instance.private_ip
}

output "test_instance_public_ip" {
  value = module.test_instance.public_ip
}