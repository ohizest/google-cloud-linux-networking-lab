# Automated Linux Networking Lab on GCP Using Python and Terraform

This will serve as a small network of Ubuntu VMs on GCP that simulate a real-world internal network setup with routing, firewall, file sharing, and DNS. 

The deployment of the resources below will be done using Terraform:
- A custom VPC
- Two subnets:
  - `public-subnet`
  - `private-subnet`
- Three Ubuntu VMs:
  - `vm-router` in the appropriate subnet
  - `vm-client1` in the appropriate subnet
  - `vm-client2` in the appropriate subnet
- Startup scripts to allow SSH access

### Step 1
Through the main.tf file in the network folder, I created a Virtual Private Cloud (VPC) named linux-vpc-network with two subnets (public and private). The public subnet's CIDR range is 10.10.1.0/24 while the private subnet's CIDR range is 10.10.2.0/24.

### Step 2
Next step, Three Virtual Machines (vm-router, vm-client1, vm-client2) will be created in the appropriate subnets.
