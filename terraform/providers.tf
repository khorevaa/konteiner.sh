variable "rancher_api_url" {}
variable "rancher_accesskey" {}
variable "rancher_secretkey" {}

provider "rancher" {
  api_url = "${var.rancher_api_url}"
  access_key = "${var.rancher_accesskey}"
  secret_key = "${var.rancher_secretkey}"
}
