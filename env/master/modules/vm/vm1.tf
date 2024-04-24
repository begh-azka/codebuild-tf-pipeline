resource "google_compute_instance" "vm1" {
  name                      = var.vm1
  machine_type              = var.machine_type1
  zone                      = var.vm_zone1
  can_ip_forward            = var.ip_forwarding1
  allow_stopping_for_update = true                     
  #deletion_protection       = var.deletion_protection1 
  #depends_on                = [var.network1]

  shielded_instance_config {

    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true

  }

  tags = var.tags1

  boot_disk {
    initialize_params {
      image = var.image1
      size  = var.size1
      type  = var.type1

    }
    auto_delete = "true"
  }
  metadata = {
    enable-osconfig         = "TRUE"
    enable-guest-attributes = "TRUE"
    enable-os-inventory     = "TRUE"
    block-project-ssh-keys  = true

  }

  network_interface {
    network    = var.network1
    subnetwork = var.subnet-1-name

    access_config {
      // Ephemeral public IP
    }
  }

  labels = {
    name      = var.name1
    project   = var.project1
    role      = var.role1
    env       = var.env1
    owner     = var.owner1
    terraform = var.terraform1
    schedule  = var.schedule1
  }

   lifecycle {
    ignore_changes = [metadata["ssh-keys"]]
  }

  service_account {
    scopes = ["compute-ro", "monitoring-write", "logging-write", "storage-ro", "service-control", "service-management", "cloud-platform"]
  }
}
