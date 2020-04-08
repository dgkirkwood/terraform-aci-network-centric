terraform {
  backend "remote" {
    organization = "Network"

    workspaces {
      name = "cisco-aci-network-centric"
    }
  }
}

