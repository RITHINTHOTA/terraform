variable "image_id" {
  type        = string #optional
  default     = "ami-031d574cddc5bb371" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "instance_name" {
    default = "backend"
}