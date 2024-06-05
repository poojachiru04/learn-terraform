resource "aws_instance" "ec2-nodes" {
  for_each               = var.components
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = ["sg-0adfe007281191520"]

  tags = {
    Name = each.key
  }
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}

# frontend = {
#   instance_type = "t3.small"
# }

# In the above input key is frontend, value is { instance_type = "t3.small" }.
# since it is been called by for_each, each prefix is needed like each.key and each.value