resource "aws_route53_record" "expense" {
    for_each = aws_instance.expense #ekkada manam for_each ke outputs ne base ga chestunam kabattee key and value kuda outputs ne chudali normal variables rasina vatini kadhu
    zone_id = var.zone_id
    name = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = each.key  == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
    # if records already exsists
    allow_overwrite = true
}