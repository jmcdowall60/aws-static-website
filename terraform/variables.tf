variable "ami" {
  description = "AWS AMI used by EC2 webserver"
  default = "ami-f976839e"
}

variable "instance_type" {
  description = "EC2 instance type used by webserver"
  default = "t2.micro"
}