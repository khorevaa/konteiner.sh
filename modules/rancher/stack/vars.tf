variable "stack_names" { type = "list" }
variable "scope" { default = "user" }
variable "environment_id" {}
variable "start_on_create" { default = "true" }

locals {
  num_stacks = "${length(var.stack_names)}"
}

output "name" {
  value = "${rancher_stack.stack.name}"
}
