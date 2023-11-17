variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_name_tag" {
  description = "Tag for the VPC"
}

variable "subnet_tag_key" {
  description = "Key for the subnet tag"
}

variable "subnet_tag_value" {
  description = "Value for the subnet tag"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-12345678"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}
