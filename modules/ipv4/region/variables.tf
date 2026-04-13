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
  type    = number
  default = 20
}

variable "max_netmask" {
  type    = number
  default = 24
}

variable "default_netmask" {
  type    = number
  default = 22
}
