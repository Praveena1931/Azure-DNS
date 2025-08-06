variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location for the resource group"
  type        = string
}

variable "dns_zone_name" {
  description = "The name of the DNS zone (e.g., mydomain.com)"
  type        = string
}

variable "public_ip_name" {
  description = "The name of the public IP resource"
  type        = string
}

variable "public_ip_allocation_method" {
  description = "The allocation method for the public IP (Static or Dynamic)"
  type        = string
}

variable "public_ip_version" {
  description = "The IP version for the public IP (IPv4 or IPv6)"
  type        = string
}

variable "dns_a_record_name" {
  description = "The name of the DNS A record"
  type        = string
}

variable "dns_a_record_ttl" {
  description = "The TTL (Time To Live) for the DNS A record"
  type        = number
}

variable "tags" {
  type = map(string)
}