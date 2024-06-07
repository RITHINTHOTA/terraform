resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-09a1b15d4ef9d64c8"]
    instance_type = each.value 
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}
