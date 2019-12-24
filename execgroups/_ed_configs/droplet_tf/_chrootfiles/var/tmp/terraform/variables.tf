variable "do_token" {}
variable "vm_ssh_key_id" {}
variable "vm_num_of_droplets" {
  default = 1
}
variable "vm_image" {
  default = "ubuntu-18-04-x64"
}
variable "vm_region" {
  default = "nyc3"
}
variable "vm_size" {
  default = "s-1vcpu-1gb"
}
variable "vm_private_networking" {
  default = null
}
variable "vm_backups" {
  default = null
}
variable "vm_monitoring" {
  default = null
}
variable "vm_ipv6" {
  default = null
}
variable "vm_name" {
  default = "ubuntu-base"
}
