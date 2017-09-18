variable "volume_names" { type = "list" }
variable "environment_id" {}
variable "storage_driver" {} 
variable "storage_stack_name" {}

locals {
  num_volumes = "${length(var.volume_names)}"
}
