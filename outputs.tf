output "ec2_instance" {
    description = "attributes of EC2 instance created by this module"
    value = {
        primary_network_interface_id = aws_instance.this.primary_network_interface_id
        private_dns = aws_instance.this.private_dns
        public_dns = aws_instance.this.public_dns
        public_ip = aws_instance.this.public_ip
        arn = aws_instance.this.arn
    }
  
}
