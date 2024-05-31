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

# variable "ami" {
#   default = "ami-090252cbe067a9e58"
# }
# variable "vpc_security_group_ids" {
#   default = ["sg-0adfe007281191520"]
# }
# variable "zone_id" {
#   default = "Z03558501U9ES0NJ4VZ02"
# }
