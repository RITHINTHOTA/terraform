locals {
    ami_id = "ami-090252cbe067a9e58"
    sg_id = "sg-09a1b15d4ef9d64c8"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        Name = "locals"
    }
}