provider "aci" {
  # credentials
  url      = var.aci_url
  username = var.aci_username
  password = var.aci_password
  insecure = true
  // proxy_url = "https://proxy_server:proxy_port"
}

//  Cert based authentication is recommended 
// provider "aci" {
//   # cisco-aci user name
//   username = "kevin"
//   # private key path
//   private_key = "admin.key"
//   # Certificate Name
//   cert_name = "admin.crt"
//   # cisco-aci url
//   url      = var.aci_url
//   insecure = true
//   version  = "0.1.8"
// }

module fabric_policies {
  source = "./fabric"
}

module vlan {
  source          = "./vlan"
  tenant_name     = "foo"
  gateway_address = "10.10.1.1/24"
}

module vlan2 {
  source          = "./vlan"
  tenant_name     = "foo2"
  gateway_address = "10.10.2.1/24"
  unicast_route   = "yes"
}

module vlan3 {
  source          = "./vlan"
  tenant_name     = "foo3"
  gateway_address = "10.10.3.1/24"
}
module vlan4 {
  source          = "./vlan"
  tenant_name     = "foo4"
  gateway_address = "10.10.4.1/24"
}