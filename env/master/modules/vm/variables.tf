#----------------- vm1 -----------------
variable "vm1" {
  type        = string
  description = "name of vm"
}

variable "machine_type1" {
  type        = string
  description = "name of machine type"
}

variable "vm_zone1" {
  type        = string
  description = "set zone"
}

variable "network1" {
  type        = string
  description = " network name"
}

variable "subnet-1-name" {
  type        = string
  description = "select sub-network name"
}

variable "tags1" {
  type        = list(any)
  description = "enter tags"
}

variable "ip_forwarding1" {
  type        = string
  description = "enter ip_forwarding"
}

/*variable "deletion_protection1" {
  type        = string
  description = "enter true or false"
}*/

variable "image1" {
  type        = string
  description = "enter image id"
}

variable "size1" {
  type        = string
  description = "size of disk"
}

variable "type1" {
  type        = string
  description = "type of disk"
}

# ----------------- LABLES -----------------

variable "name1" {
  type        = string
  description = "name labels"
}

variable "schedule1" {
  type        = string
  description = "schedule labels"
}

variable "project1" {
  type        = string
  description = "project labels"
}

variable "role1" {
  type        = string
  description = "role labels"
}

variable "env1" {
  type        = string
  description = "env labels"
}

variable "owner1" {
  type        = string
  description = "owner labels"
}

variable "terraform1" {
  type        = string
  description = "terraform labels"
}