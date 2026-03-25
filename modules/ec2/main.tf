#Creating the aws instance for Wordpress Sever 
resource "aws_instance" "Wordpress_server" {
  ami           = local.instance_ami
  instance_type = var.instance_type
  key_name      = "ubuntu-abdi"   # Attached key pair here
  vpc_security_group_ids = [aws_security_group.TF_SG.id] ## Attaching the SG I've created to the Instance

  tags = {
    Name = "Wordpress_server"
  }

  user_data = file("cloud-init.yml")
}

### Creating the Security Group For EC2
resource "aws_security_group" "TF_SG" {
  name        = "security group using Terraform"
  description = "security group using Terraform"
  vpc_id      = var.security_group_vpc_id

  ingress {
    description      = "Allowing HTTP access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
ingress {
    description      = "Allowing SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

 } 
