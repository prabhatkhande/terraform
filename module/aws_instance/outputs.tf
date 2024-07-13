output "instance_id" {
  description = "The ID of the created instance."
  value = aws_instance.stage_instance.id
}

output "public_ip" {
  description = "The public IP address of the created instance."
  value   = aws_instance.stage_instance.public_ip
}
