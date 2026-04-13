variable "environment" {
  type = string
}

variable "region" {
  type = string
}

variable "ipam_scope_id" {
  type = string
}

variable "source_ipam_pool_id" {
  type = string
}

variable "min_netmask" {
  type = number
}

variable "max_netmask" {
  type = number
}

variable "default_netmask" {
  type = number
}

variable "address_family" {
  type = string

  validation {
    condition     = contains(["ipv4", "ipv6"], var.address_family)
    error_message = "address_family must be ipv4 or ipv6"
  }
}
