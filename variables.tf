variable "ami_id" {
    type = string
    description = "ID of the AMI to deploy ec2 instance"

    validation {
      condition = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
      error_message = "Please enter a valid AMI ID starting with 'ami-'"
    }
  
}

variable "key_name" {
    type = string
    description = "key name"
  
}


variable "tags" {
    type = map(string)
    description = "tags for EC2"
}

variable "user_data" {
    type = string
    default = <<EOF
        #!/bin/bash
        echo "no userdata" > /var/user_data
        EOF
}

variable "subnet_id" {
    type = string
    description = "subnet ID to launch EC2 instance in"

}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "preffered instance type"
  
}

variable "secudirt_groups" {
    type = list(string)
    description = "security groups for EC2 instance"
  
}
