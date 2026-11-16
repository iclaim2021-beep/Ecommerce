variable "location" {
  default = "centralindia"
}
variable "env" {
  type = string
}
variable "acr_name" {
  type = string
}
variable "aks_vm_size" {
  default = "Standard_B2s"
}
variable "node_count" {
  default = 1
}
