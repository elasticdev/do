provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "vm" {
  count = "${var.vm_num_of_droplets}"
  ssh_keys           = ["${var.vm_ssh_key_ids}"]
  image              = "${var.vm_image}"
  region             = "${var.vm_region}"
  size               = "${var.vm_size}"
  private_networking = "${var.vm_private_networking}"
  backups            = "${var.vm_backups}"
  monitoring         = "${var.vm_monitoring}"
  ipv6               = "${var.vm_ipv6}"
  name               = "${var.vm_name}-${count.index}"

  provisioner "local-exec" {
    // doesn't listen for a little while after API gives the all-clear
    command = "sleep 25s"
  }
