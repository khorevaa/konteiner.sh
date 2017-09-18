resource "rancher_stack" "stack" {
  count = "${local.num_stacks}"
  name = "${var.stack_names[count.index]}"
  environment_id = "${var.environment_id}"
  docker_compose = "${file("${path.cwd}/rancher/stack-config/${var.stack_names[count.index]}/docker-compose.yml")}"
  rancher_compose = "${file("${path.cwd}/rancher/stack-config/${var.stack_names[count.index]}/rancher-compose.yml")}"
  start_on_create = "${var.start_on_create}"
  scope = "${var.scope}"
 }
