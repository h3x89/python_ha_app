#

# default variables

#

variable "project_name" {
  default = "default-project-188123"
}

variable "ssh_user" {
  default = "ubuntu"
}

variable "public_key_path" {
  default = "/home/h3x/.ssh/id_rsa.pub"
}
variable "private_key_path" {
  default = "/home/h3x/.ssh/id_rsa"
}
