provider "azurerm" {
  features {}
}

module "Domainname" {
  source                      = "../../modules/dns"
  resource_group_name         = var.resource_group_name
  resource_group_location     = var.resource_group_location
  dns_zone_name               = var.dns_zone_name
  public_ip_name              = var.public_ip_name
  public_ip_allocation_method = var.public_ip_allocation_method
  public_ip_version           = var.public_ip_version
  dns_a_record_name           = var.dns_a_record_name
  dns_a_record_ttl            = var.dns_a_record_ttl

}
