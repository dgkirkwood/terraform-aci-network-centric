resource "aci_cdp_interface_policy" "cdp_enabled" {
  name  = "CDP_ENABLED"
  admin_st  = "enabled"
}