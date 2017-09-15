variable "rancher_api_url" {}
variable "rancher_accesskey" {}
variable "rancher_secretkey" {}
variable "rancher_environment_name" {}
variable "rancher_environment_member_id" {}
variable "rancher_environment_member_type" {}
variable "rancher_environment_member_role" {}
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
    external_id = "${var.rancher_environment_member_id}"
    external_id_type = "${var.rancher_environment_member_type}"
    role = "${var.rancher_environment_member_role}"
  }

}
