variable "digitalocean_accesstoken" {}
variable "droplet_count" { default = 2 }
variable "droplet_image" { default = "rancheros" }
variable "digitalocean_region" { default = "fra1" }
variable "droplet_size" { default = "1gb" }
variable "droplet_ssh_user" { default = "rancher" }

variable "amazonec2-access-key" {} 
variable "amazonec2-secret-key" {}
variable "amazonec2-ami" { default = "ami-355d815a" } 
variable "amazonec2-region" { default = "eu-central-1" }
variable "amazonec2-block-duration-minutes" { default = "0" }
variable "amazonec2-device-name" { default = "/dev/sda1" }
variable "amazonec2-retries" { default = "5" } 
variable "amazonec2-root-size" { default = "16" }
variable "amazonec2-security-group" {}
variable "amazonec2-spot-price" { default = "0.50" }
variable "amazonec2-ssh-user" { default = "rancher" } 
variable "amazonec2-volume-type" { default = "gp2" } 
variable "amazonec2-vpc-id" {}
variable "amazonec2-zone" { default = "a" } 
variable "amazonec2-instance-type" { default = "t2.small" }

variable "driver" {}

locals {

  global_host_config {
    environment_name = "${rancher_environment.environment.name}"
    environment_id = "${rancher_environment.environment.id}"
    driver = "${var.driver}"
  }

  driver_config_type {
    digitalocean {
      accessToken = "${var.digitalocean_accesstoken}"
      image = "${var.droplet_image}"
      size = "2gb"
      region = "${var.digitalocean_region}"
      size = "${var.droplet_size}"
      sshUser = "${var.droplet_ssh_user}"
   }
    amazonec2 {
      accessKey = "${var.amazonec2-access-key}" 
      secretKey = "${var.amazonec2-secret-key}" 
      ami = "${var.amazonec2-ami}" 
      region = "${var.amazonec2-region}" 
      blockDurationMinutes = "${var.amazonec2-block-duration-minutes}" 
      deviceNamee = "${var.amazonec2-device-name}" 
      retries = "${var.amazonec2-retries}" 
      rootSize = "${var.amazonec2-root-size}" 
      securityGroup = "${var.amazonec2-security-group}" 
      spotPrice = "${var.amazonec2-spot-price}" 
      sshUser = "${var.amazonec2-ssh-user}" 
      volumeTyype = "${var.amazonec2-volume-type}" 
      vpcId = "${var.amazonec2-vpc-id}" 
      zone = "${var.amazonec2-zone}"
      instanceYype = "${var.amazonec2-instance-type}"
     }
  }

  driver_config = "${local.driver_config_type["${var.driver}"]}"

}
