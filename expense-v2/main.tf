resource "aws_instance" "ec2-nodes" {
  count                  = length(var.components)
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-0adfe007281191520"]

  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {
  default = ["frontend", "backend", "mysql"]
}
