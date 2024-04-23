##############################hsia-dv-vpc############################
output "network" {
  value = google_compute_network.main-vpc.name
}

output "network_self_link" {
  value = google_compute_network.main-vpc.self_link
}

output "subnet-name1" {
  value = google_compute_subnetwork.subnet1.name
}

output "subnet1-range" {
  value = "google_compute_subnetwork.subnet1.ip_cidr_range"
}


