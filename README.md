# Automated Linux Networking Lab on GCP Using Python and Terraform

This will serve as a small network of Ubuntu VMs on GCP that simulate a real-world internal network setup with routing, firewall, file sharing, and DNS.
The deployment of the Ubuntu Virtual Machines will be done using Terraform.

### Step 1
Created a Virtual Private Cloud (VPC) named linux-vpc-network with two subnets (public and private). The public subnet's CIDR range is 10.10.1.0/24 while the private subnet's CIDR range is 10.10.2.0/24.
