module "aws_static_website" {
  source = "modules/aws-static-website"
  ami = var.ami
  instance_type = var.instance_type
  user_data_file = file("${path.module}/scripts/user_data.sh")
}