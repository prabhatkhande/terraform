variable "image_id" {
    description = "ami id"
    type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}

variable "instance_key" {
  description = "Instance key"
  type = string
}

variable "tags" {
  description = "Instance Name and Tags"
  type = string
}