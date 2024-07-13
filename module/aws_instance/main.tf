resource "aws_instance" "stage_instance" {
  ami = var.image_id
  instance_type = var.instance_type
  key_name = var.instance_key
  security_groups = ["webserver-sg"]
  tags = {
    Name = var.tags
  }
}