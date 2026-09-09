output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}



output "nat_gateway_id" {
  value = aws_nat_gateway.gw.id
}

output "custom_network_acl_id" {
  value = aws_network_acl.private.id
}
