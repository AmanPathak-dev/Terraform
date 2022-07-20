variable "region" {
  type = string
  default = "us-east-1"
}
variable "cidr-block" {
  type = string
  default = "10.0.0.0/16"
}

variable "cidr-block-subnet" {
  type = string
  default = "10.0.1.0/24"
}

variable "cidr-block-gateway" {
  type = string
  default = "0.0.0.0/0"
}

variable "ami" {
  type = string
  default = "ami-052efd3df9dad4825"
}