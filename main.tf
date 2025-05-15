module "network" {
  source = "./network"
}

module "compute" {
  source = "./compute"
  network_id = module.network.network_id  # Pass the network ID output from network module
}
