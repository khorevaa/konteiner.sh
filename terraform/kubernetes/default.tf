variable "rancher_api_url" {}
variable "rancher_accesskey" {}
variable "rancher_secretkey" {}
variable "rancher_environment_name" {}
variable "orchestration" {}

provider  "rancher" {
  api_url = "${var.rancher_api_url}"
  access_key = "${var.rancher_accesskey}"
  secret_key = "${var.rancher_secretkey}"
}
 
resource "rancher_environment" "environment" {
  name = "${var.rancher_environment_name}"
  orchestration = "${var.orchestration}"

  member {
    external_id = "2690292"
    external_id_type = "github_user"
    role = "owner"
  }

}
