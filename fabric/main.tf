resource "aci_lldp_interface_policy" "lldp_interface_policy" {
    description = "LLDP Policy"
    name        = "LLDP_ENABLED"
    admin_rx_st = "enabled"
    admin_tx_st = "enabled"
    annotation  = "tag_lldp"
    name_alias  = "alias_lldp"
} 

resource "aci_lacp_policy" "foolacp_policy" {
    description = "Enables LACP"
    name        = "LACP_ACTIVE"
    annotation  = "tag_lacp"
    ctrl        = "susp-individual,fast-sel-hot-stdby"
    max_links   = "16"
    min_links   = "1"
    mode        = "active"
    name_alias  = "alias_lacp"
}