variable "host_count" { default = 1 }
variable "hostname" { default = "lab" }
variable "host_labels" {
  type = "map"
  default = {}
}

variable "droplet_image" { default = "rancheros" }
variable "digitalocean_region" { default = "fra1" }
variable "droplet_size" { default = "1gb" }
variable "droplet_ssh_user" { default = "rancher" }

variable "amazonec2-ami" { default = "ami-5d9f8b39" }
variable "amazonec2-region" { default = "eu-west-2" }
variable "amazonec2-block-duration-minutes" { default = "0" }
variable "amazonec2-device-name" { default = "/dev/sda1" }
variable "amazonec2-retries" { default = "5" }
variable "amazonec2-root-size" { default = "16" }
variable "amazonec2-security-group" { default = "" }
variable "amazonec2-ssh-user" { default = "rancher" }
variable "amazonec2-volume-type" { default = "gp2" }
variable "amazonec2-vpc-id" { default = "" }
variable "amazonec2-zone" { default = "a" }
variable "amazonec2-instance-type" { default = "t2.small" }

variable "environment_vars" { type = "map" }
variable "external_driver_vars" { type = "map" }
variable "drivers" { type = "list" }

locals {

  num_drivers = "${length(var.drivers)}"

  driver_config_type {
    digitalocean {
      accessToken = "${var.external_driver_vars["digitalocean_accesstoken"]}"
      image = "${var.droplet_image}"
      region = "${var.digitalocean_region}"
      size = "${var.droplet_size}"
      sshUser = "${var.droplet_ssh_user}"
    }
    amazonec2 { 
      accessKey = "${var.external_driver_vars["amazonec2-access-key"]}"
      secretKey = "${var.external_driver_vars["amazonec2-secret-key"]}"
      ami = "${var.amazonec2-ami}"
      region = "${var.amazonec2-region}"
      blockDurationMinutes = "${var.amazonec2-block-duration-minutes}"
      deviceName = "${var.amazonec2-device-name}"
      retries = "${var.amazonec2-retries}"
      rootSize = "${var.amazonec2-root-size}"
      securityGroup = "${var.external_driver_vars["amazonec2-security-group"]}"
      sshUser = "${var.amazonec2-ssh-user}"
      volumeType = "${var.amazonec2-volume-type}"
      vpcId = "${var.external_driver_vars["amazonec2-vpc-id"]}"
      zone = "${var.amazonec2-zone}"
      instanceType = "${var.amazonec2-instance-type}"
    }
  }
}

