#########################################
# VPC ID
#########################################

output "vpc_id" {

  description = "VPC ID"

  value = aws_vpc.main.id

}

#########################################
# Public Subnet ID
#########################################

output "public_subnet_id" {

  description = "Public Subnet ID"

  value = aws_subnet.public.id

}

#########################################
# Security Group ID
#########################################

output "security_group_id" {

  description = "Security Group ID"

  value = aws_security_group.web.id

}

#########################################
# EC2 Instance ID
#########################################

output "instance_id" {

  description = "EC2 Instance ID"

  value = aws_instance.web.id

}

#########################################
# Public IP
#########################################

output "public_ip" {

  description = "Public IP"

  value = aws_instance.web.public_ip

}

#########################################
# Public DNS
#########################################

output "public_dns" {

  description = "Public DNS"

  value = aws_instance.web.public_dns

}
