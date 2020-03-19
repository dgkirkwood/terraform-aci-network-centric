variable "tenant_name" {
  type = string
}

variable "gateway_address" {
  type = string
}

variable "unicast_route" {
  description = "Enables or disables unicast routing for the BD (yes/no)"
  default = "no"
}