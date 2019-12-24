variable "do_token" {}
variable "vm_ssh_key_ids" { type = "list" }

variable "vm_num_of_droplets" {
  default = 1
}
variable "vm_image" {
  default = "ubuntu-18-04-x64"
}
variable "vm_region" {
  default = "sfo2"
}
variable "vm_size" {
  default = "s-1vcpu-1gb"
}
variable "vm_private_networking" {
  default = 1
}
variable "vm_backups" {
  default = 0
}
variable "vm_monitoring" {
  default = 0
}
variable "vm_ipv6" {
  default = 0
}
variable "vm_name" {
  default = "terraform-digitalocean-droplets-ubuntu"
}
