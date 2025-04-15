resource "azurerm_virtual_network_gateway" "team4_vpn" {
  name                = "team4-vpn"
  location            = azurerm_resource_group.team4_rg.location
  resource_group_name = azurerm_resource_group.team4_rg.name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "VpnGw1"

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.team4_pubip_vpn.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.GatewaySubnet.id
  }
}
resource "azurerm_local_network_gateway" "team4_local" {
  name                = "team4-local"
  resource_group_name = azurerm_resource_group.team4_rg.name
  location            = azurerm_resource_group.team4_rg.location
  gateway_address     = "1.220.76.2"
  address_space       = ["192.168.20.0/24"]
}
resource "azurerm_virtual_network_gateway_connection" "team4_onpremise" {
  name                = "team4-onpremise"
  location            = azurerm_resource_group.team4_rg.location
  resource_group_name = azurerm_resource_group.team4_rg.name

  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.team4_vpn.id
  local_network_gateway_id   = azurerm_local_network_gateway.team4_local.id

  shared_key = var.shared_key
  ipsec_policy {
    dh_group = "DHGroup2"
    ike_encryption = "AES256"
    ike_integrity = "SHA256"
    ipsec_encryption = "AES256"
    ipsec_integrity = "SHA256"
    pfs_group = "PFS2"
    sa_datasize = 2147483647
    sa_lifetime = 3600
  }
}