variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "k8s"
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = "centralindia"

}

variable "vnet_name" {
  description = "virtual network name"
  type        = string
  default     = "vnet-1"
}

variable "address_space" {
  description = "adress space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "subnet_name"
  type        = string
  default     = "subnet-1"
}

variable "subnet1_prefix" {
  description = "subnet-1 address prefix"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}