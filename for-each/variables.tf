variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}
variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terraform = "true"
    }
}
variable "domain_name" {
    default = "rithinexpense.online"
}

variable "zone_id" {
    default = "Z03895071TTSJ7NLAVMXE"
}