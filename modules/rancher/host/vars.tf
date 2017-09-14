variable "host_count" { default = 2 }
variable "hostname" { default = "lab" }
variable "driver_config" { type = "map" }
variable "global_host_config" { type = "map" }
variable "host_labels" {
  type = "map"
  default = {}
}

