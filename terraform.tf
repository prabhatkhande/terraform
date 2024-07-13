terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

/*
resource "aws_vpc" "stage-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${local.staging_env}-vpc"
  }
}

resource "aws_security_group" "allow_ports" {
  name        = "${local.staging_env}-sg"
  description = "allow inbound traffic"
  vpc_id      = aws_vpc.stage-vpc.id

  ingress {
    description = "Allow SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_subnet" "stage-subnet" {
  vpc_id                  = aws_vpc.stage-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "${local.staging_env}-subnet"
  }
}

resource "aws_internet_gateway" "stage-igw" {
  vpc_id = aws_vpc.stage-vpc.id

  tags = {
    Name = "${local.staging_env}-igw"
  }
}

resource "aws_route_table" "stage-route" {
  vpc_id = aws_vpc.stage-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.stage-igw.id
  }

  tags = {
    Name = "${local.staging_env}-rt"
  }
}

resource "aws_route_table_association" "stage-rt" {
  subnet_id      = aws_subnet.stage-subnet.id
  route_table_id = aws_route_table.stage-route.id
}

resource "aws_instance" "stage_instance" {
  ami             = "ami-04a81a99f5ec58529"
  instance_type   = "t2.micro"
  key_name        = "test-key"
  security_groups = ["${aws_security_group.allow_ports.id}"]
  user_data       = file("install_nginx.sh")
  subnet_id       = aws_subnet.stage-subnet.id
  depends_on      = [aws_internet_gateway.stage-igw]
  tags = {
    Name = "${local.staging_env}-Instance"
  }
}

module "aws_instance" {
  source          = "./module/aws_instance"
  image_id        = "ami-04a81a99f5ec58529"
  instance_type   = "t2.micro"
  instance_key    = "test-key"
  tags = "webserver"
}

output instance_id {
  value = module.aws_instance.instance_id
}

output public_ip {
  value = module.aws_instance.public_ip
}

module "aws_s3_bucket" {
  source        = "./module/aws_s3_bucket"
  bucket_name   = "test-bucket03567"
  versioning    = true
  tags = "dev-bucket"
}

output "s3_bucket" {
  value = module.aws_s3_bucket.s3_bucket
}
*/