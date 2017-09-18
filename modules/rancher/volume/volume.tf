resource "rancher_volume" "volume" {
  count = "${local.num_volumes}"
  description = "Depends on stack '${var.storage_stack_name}'"
  name = "${var.volume_names[count.index]}"
  environment_id = "${var.environment_id}"
  driver = "${var.storage_driver}"
}
