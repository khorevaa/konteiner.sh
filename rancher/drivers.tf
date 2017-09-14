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
      deviceName = "${var.amazonec2-device-name}"
      retries = "${var.amazonec2-retries}"
      rootSize = "${var.amazonec2-root-size}"
      securityGroup = "${var.amazonec2-security-group}"
      sshUser = "${var.amazonec2-ssh-user}"
      volumeType = "${var.amazonec2-volume-type}"
      vpcId = "${var.amazonec2-vpc-id}"
      zone = "${var.amazonec2-zone}"
      instanceType = "${var.amazonec2-instance-type}"
     }
  }

  driver_config = "${local.driver_config_type["${var.driver}"]}"

}
