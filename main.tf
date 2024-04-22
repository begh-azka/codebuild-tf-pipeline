// Configure the Google Cloud provider
provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
  zone        = var.zone

}

provider "google-beta" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

module "vm" {
  source               = "./modules/vm/"
  vm1                  = "vm1"
  machine_type1        = "n1-standard-1"
  vm_zone1             = "northamerica-northeast1-a"
  image1               = "ubuntu-os-cloud/ubuntu-2004-lts"
  size1                = "20"
  type1                = "pd-standard"
  ip_forwarding1       = "false"
  deletion_protection1 = "true"
  tags1                = ["ssh", "openvpn"]
  network1             = module.vpc.network_self_link
  subnet-1-name        = module.vpc.subnet-name1

  # --------------- LABELS ---------------
  project1   = "terraform-pro"
  role1      = "vm1-test"
  env1       = "test"
  owner1     = "devops"
  terraform1 = "yes"
  name1      = "vm1"
  schedule1  = "no"

}

module "vpc" {
  source = "./modules/vpc/"
  # --------------- main-vpc ---------------
  network_name1 = "hsia-prd-vpc"
  region        = "northamerica-northeast1"
  # --------------- main-vpc-subnet ---------------
  subnet_name1    = "hsia-prd-public-subnet"
  subnet_range1   = "10.163.136.0/27"
  private_access1 = "true"

}