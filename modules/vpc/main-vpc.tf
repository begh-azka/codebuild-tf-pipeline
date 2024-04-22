# ---------------------- main-vpc ----------------------
resource "google_compute_network" "main-vpc" {
  name                            = var.network_name1
  routing_mode                    = "GLOBAL"
  mtu                             = 1500
  auto_create_subnetworks         = false
  delete_default_routes_on_create = false
}

resource "google_compute_subnetwork" "subnet1" {
  name                     = var.subnet_name1
  ip_cidr_range            = var.subnet_range1
  network                  = google_compute_network.main-vpc.id
  region                   = var.region
  private_ip_google_access = var.private_access1

}