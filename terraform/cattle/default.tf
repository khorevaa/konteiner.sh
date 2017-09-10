variable "digitalocean_accesstoken" {}
variable "rancher_api_url" {}
variable "rancher_accesskey" {}
variable "rancher_secretkey" {}
variable  "rancher_environment_name" {}
variable "orchestration" {}

module "rancher-default-components" {
  source = "../modules/rancher-default-componentes"
  rancher_api_url = "${var,rancher_api_url}"
  rancher_accesskey = "${var.rancher_accesskey}"
  rancher_secretkey = "${var.rancher_secretkey}"
  orchestration = "${var.orchestration}" 
}

module "cattle-host" {
  source = "../modules/rancher-host"
  driver_config = "${var.driver}"
}
