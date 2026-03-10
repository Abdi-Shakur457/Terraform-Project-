module "ec2" {
  source = "./modules/ec2/"
  instance_type = var.instance_type
  security_group_vpc_id = var.instance_type 
}

