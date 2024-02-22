provider "aws" {
  region = "us-east-2"
  access_key = "AKIA3N3QDAZO3NNKK7Q5"
  secret_key = "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"
}

resource "aws_instance" "one" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  vpc_security_group_ids = [aws_security_group.swiggy-sg.id]
  user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo chkconfig httpd on
sudo echo "Hai All This is My Swiggy-1 Web-Application Created by Terraform Infrastructute By Java Home Cloud Server-1" > /var/www/html/index.html
EOF


  tags = {
    Name = "swiggy-1"
  }
}


resource "aws_instance" "two" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  availability_zone = "us-east-2b"
  vpc_security_group_ids = [aws_security_group.swiggy-sg.id]
  user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo chkconfig httpd on
sudo echo "Hai All This is My Swiggy-2 Web-Application Created by Terraform Infrastructute By Java Home Cloud Server-1" > /var/www/html/index.html
EOF


  tags = {
    Name = "swiggy-2"
  }
}
