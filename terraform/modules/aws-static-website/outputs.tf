output "ec2_public_ip" {
  value = aws_instance.webserver.public_ip
}