resource "google_compute_network" "custom_vpc" {
  name                    = "custom-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "public-subnet"
  ip_cidr_range = "10.10.1.0/24"
  region        = var.region
  network       = google_compute_network.custom_vpc.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "private-subnet"
  ip_cidr_range = "10.10.2.0/24"
  region        = var.region
  network       = google_compute_network.custom_vpc.id
}
