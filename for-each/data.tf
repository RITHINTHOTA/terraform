data "aws_ami" "ami_info" {
    most_recent = true
    owners = ["973714476881"]
    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
}
