resource "google_compute_network" "linux_vpc_network" {
  project                 = "delta-coast-459008-t7"
  name                    = "linux-vpc-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "public-subnetwork"
  ip_cidr_range = "10.10.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.linux_vpc_network.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "private-subnetwork"
  ip_cidr_range = "10.10.2.0/24"
  region        = "us-central1"
  network       = google_compute_network.linux_vpc_network.id
  }
