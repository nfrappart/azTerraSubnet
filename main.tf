###############################################
# This module allows the creation of a Subnet #
###############################################

#Creation of the subnet
resource "azurerm_subnet" "TerraSubnet" {
  name                      = var.SubnetName
  resource_group_name       = var.RgName
  virtual_network_name      = var.VNetName
  address_prefixes            = var.Subnetaddressprefix
  service_endpoints         = var.ServiceEndpointPolicies
  enforce_private_link_endpoint_network_policies = var.PrivateLinkServicePolicies
}
