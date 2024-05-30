resource "aws_instance" "frontend" {
  ami                    = "ami-090252cbe067a9e58"
instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-0adfe007281191520"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-0adfe007281191520"]

  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-0adfe007281191520"]

  tags = {
    Name = "mysql"
  }
}