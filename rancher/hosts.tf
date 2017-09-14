/* Hosts go here, for example:
  
module "kubernetes-compute" {
  source = "../modules/rancher/host"
  driver_config = "${local.driver_config}"
  global_host_config = "${local.global_host_config}"
  hostname = "compute"
  host_labels {
    compute = "true"
  }
}
*/

module "rune-host" {
  source = "../modules/rancher/host"
  driver_config = "${local.driver_config}"
  global_host_config = "${local.global_host_config}"
  hostname = "rune"
}
