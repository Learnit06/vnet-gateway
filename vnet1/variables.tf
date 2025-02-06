variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "Central US"
}

variable "address_space" {
  description = "The address space of the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

