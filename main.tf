resource "aws_instance" "this" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
    user_data = var.user_data
    security_groups = var.security_groups

    tags = var.tags
  
}
