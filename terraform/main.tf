module "aws_static_website" {
  source = "modules/aws-static-website"
  ami = "ami-e7768380"
  instance_type = "t2.small"
  user_data_file = file("${path.module}/scripts/user_data.sh")
}