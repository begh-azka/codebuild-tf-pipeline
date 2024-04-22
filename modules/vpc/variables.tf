# ---------------------- main-vpc ----------------------
variable "network_name1" {
  type        = string
  description = "name of the network"
}

variable "region" {
  type        = string
  description = "region to use for vpc and subnet creation"
}

variable "subnet_name1" {
  type        = string
  description = "name of subnet1"
}

variable "subnet_range1" {
  type        = string
  description = "cidr block for the subnet1"
}

variable "private_access1" {
  type        = string
  description = "private access"
}

