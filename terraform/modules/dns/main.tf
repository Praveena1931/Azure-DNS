resource "azurerm_resource_group" "DNSResource" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_dns_zone" "dnszone" {
  name                = var.dns_zone_name
  resource_group_name = azurerm_resource_group.DNSResource.name
}

resource "azurerm_public_ip" "pip" {
  name                = var.public_ip_name
  location            = azurerm_resource_group.DNSResource.location
  resource_group_name = azurerm_resource_group.DNSResource.name
  allocation_method   = var.public_ip_allocation_method
  ip_version          = var.public_ip_version
}

resource "azurerm_dns_a_record" "dnsrecord" {
  name                = var.dns_a_record_name
  zone_name           = azurerm_dns_zone.dnszone.name
  resource_group_name = azurerm_resource_group.DNSResource.name
  ttl                 = var.dns_a_record_ttl
  target_resource_id  = azurerm_public_ip.pip.id
}