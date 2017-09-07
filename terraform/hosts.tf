variable "default_digitalocaen_count" {}
variable "default_sofienberg_count" {} 
variable "digitalocean_accesstoken" {}
variable "digitalocean_image" {} 
variable "digitalocean_region" {} 
variable "digitalocean_size" {}
variable "digitalocean_ssh_user" {}
variable "boot2dockerurl" {} 
variable "vmwarevsphere_cpu_count" {}
variable "vmwarevsphere_datacenter" {}
variable "vmwarevsphere_disksize" {}
variable "vmwarevsphere_hostsystem" {}
variable "vmwarevsphere_memory-size" {}
variable "vmwarevsphere_datastore" {}
variable "vmwarevsphere_network" {}
variable "vmwarevsphere_password" {}
variable "vmwarevsphere_username" {}
variable "vmwarevsphere_vcenter" {}
variable "vmwarevsphere_port" {}


resource "rancher_host" "digitalocean" {
  count = "${var.default_digitalocaen_count}"
  hostname = "fog-${count.index + 1}"
  environment_id = "${rancher_environment.environment.id}"
  driver = "digitalocean"
  driver_config {
    accessToken = "${var.digitalocean_accesstoken}" 
    image = "${var.digitalocean_image}"
    region = "${var.digitalocean_region}"
    size = "${var.digitalocean_size}"
    sshUser = "${var.digitalocean_ssh_user}"
  }
}

resource "rancher_host" "sofienberg" {
  count = "${var.default_sofienberg_count}"
  hostname = "sofienberg-${count.index + 1}"
  environment_id = "${rancher_environment.environment.id}"
  driver = "vmwarevsphere"
  driver_config {
   boot2dockerUrl = "${var.boot2dockerurl}"
   cpuCount = "${var.vmwarevsphere_cpu_count}"
   datacenter = "${var.vmwarevsphere_datacenter}" 
   diskSize = "${var.vmwarevsphere_disksize}" 
   hostsystem = "${var.vmwarevsphere_hostsystem}" 
   memory_size = "${var.vmwarevsphere_memory-size}" 
   datastore = "${var.vmwarevsphere_datastore}" 
   network = "${var.vmwarevsphere_network}" 
   password = "${var.vmwarevsphere_password}" 
   username = "${var.vmwarevsphere_username}" 
   vcenter = "${var.vmwarevsphere_vcenter}" 
   vcenter_port = "${var.vmwarevsphere_port}" 
 }
}
