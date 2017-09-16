resource "rancher_host" "host" {
  count = "${var.host_count * local.num_drivers}"
  name = "${var.hostname}-${count.index + 1}"
  hostname = "${var.environment_vars["environment_name"]}-${var.hostname}-${count.index + 1}"
  environment_id = "${var.environment_vars["environment_id"]}"
  driver = "${var.drivers[count.index % local.num_drivers]}"
  labels = "${var.host_labels}"
  driver_config = "${local.driver_config_type["${var.drivers[count.index % local.num_drivers]}"]}"
}
