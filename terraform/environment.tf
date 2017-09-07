variable rancher_environment_name {}

resource "rancher_environment" "environment" {
  name = "${var.rancher_environment_name}"
  orchestration = "cattle"
}
