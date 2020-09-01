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

module "fabric-policies" {
  source  = "app.terraform.io/dk/fabric-policies/aci"
  version = "0.0.1"
}


module "vlan-creation" {
  source  = "app.terraform.io/dk/vlan-creation/aci"
  version = "0.0.1"
  tenant_name     = "foo_dan24"
  gateway_address = "10.10.1.1/24"
}
