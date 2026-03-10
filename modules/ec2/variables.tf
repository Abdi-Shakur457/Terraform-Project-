variable "instance_type" {
  type = string

}

variable "security_group_vpc_id" {
  type = string
  
}

locals {
  instance_ami = "ami-018ff7ece22bf96db"
}


