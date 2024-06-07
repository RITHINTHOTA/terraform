resource "aws_instance" "db" {
    ami= "ami-031d574cddc5bb371"
     vpc_security_group_ids = ["sg-09a1b15d4ef9d64c8"]
    instance_type = "t3.micro"
    tags = {
        Name = "db"
    }
}