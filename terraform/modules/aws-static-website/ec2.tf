resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_web.id]
  user_data = var.user_data_file
}