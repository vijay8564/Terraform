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