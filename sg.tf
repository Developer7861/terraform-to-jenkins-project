resource "aws_security_group" "swiggy-sg" {
  name = "terraform-alb-sg"
   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Ingress rule 2
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    egress {
   from_port = 0
   to_port   = 0
   protocol  = "-1"
   cidr_blocks = ["0.0.0.0/0"]
   }
}
