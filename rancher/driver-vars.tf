variable "amazonec2-access-key" { default = "" }
variable "amazonec2-secret-key" { default = "" }
variable "amazonec2-vpc-id" { default = "" }
variable "amazonec2-security-group" { default = "" }
variable "digitalocean_accesstoken" { default = "" }
variable "drivers" { default = "" }

locals {
  
  environment_vars {
     environment_name = "${rancher_environment.environment.name}"
     environment_id = "${rancher_environment.environment.id}"
  }

  external_driver_vars {
      amazonec2-access-key = "${var.amazonec2-access-key}"
      amazonec2-secret-key = "${var.amazonec2-secret-key}"
      amazonec2-vpc-id = "${var.amazonec2-vpc-id}"
      amazonec2-security-group = "${var.amazonec2-security-group}" 
      digitalocean_accesstoken = "${var.digitalocean_accesstoken}"
    }
  }
