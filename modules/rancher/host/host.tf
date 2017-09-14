resource "rancher_host" "rancher_host" {
  count = "${var.host_count}"
  name = "${var.hostname}-${count.index + 1}"
  hostname = "${var.global_host_config["environment_name"]}-${var.hostname}-${count.index + 1}"
  environment_id = "${var.global_host_config["environment_id"]}"
  driver = "${var.global_host_config["driver"]}"
  labels = "${var.host_labels}"
  driver_config = "${var.driver_config}"
}