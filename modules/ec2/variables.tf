variable "instance_type" {
  type = string

}

variable "security_group_vpc_id" {
  type = string
  
}

locals {
  instance_ami = "ami-09dbc7ce74870d573"
}


