variable "project" {
  type    = string
  default = "terraform-pro"
}

variable "credentials_file" {
  type    = string
  default = "./terraform-proj-service-account.json"
}

variable "region" {
  type    = string
  default = "northamerica-northeast1"
}

variable "zone" {
  type    = string
  default = "northamerica-northeast1-a"

}