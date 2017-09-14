variable "digitalocean_accesstoken" { default = "" }
variable "droplet_count" { default = 2 }
variable "droplet_image" { default = "rancheros" }
variable "digitalocean_region" { default = "fra1" }
variable "droplet_size" { default = "1gb" }
variable "droplet_ssh_user" { default = "rancher" }

variable "amazonec2-access-key" { default = "" } 
variable "amazonec2-secret-key" { default = "" }
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

variable "driver" {}

