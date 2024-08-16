variable "rg_name" {
    description = "rg name"
    type        = list(string)
    default     = ["rg1","rg2"]
}

variable "rg_location" {
    description  = "rg location"
    type         = list(string)
    default      = ["eastus","southindia"]
}

variable "vnet_name" {
    description = "vnet names"
    type        = list(string)
    default     = ["vnet-1","vnet-2"]
}

variable "address_space" {
    description = "address space"
    type        = list(string)
    default     = ["10.1.0.0/16","10.2.0.0/16"]
}
