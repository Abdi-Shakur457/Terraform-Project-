output "instance_ID" {
  description = "The ID of my wordpress ec2 instance"
  value = aws_instance.wordpress_server.id 
  
}

output "EC2_Public_IP" {
  description = "The public IP of the wordpress instance"
  value = aws_instance.wordpress_server.public_ip
}
  