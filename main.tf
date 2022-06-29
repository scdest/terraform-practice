resource "aws_s3_bucket" "hillel-18-dukelskyi" {
  bucket = var.bitbucket_name //"hillel-18-dukelskyi"
}

resource "aws_instance" "debian_instance" {
  ami           = var.instance_ami_id // "ami-0558fc6ef8f613df0"
  instance_type = var.instance_type // "t2.micro" 

  user_data = <<-EOL
  #!/bin/bash -xe

  sudo apt update
  sudo apt install nginx
  EOL
}

resource "aws_eip" "lb" {
  instance = aws_instance.debian_instance.id
  vpc      = true
}
