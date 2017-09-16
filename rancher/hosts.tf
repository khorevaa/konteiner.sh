/* Hosts go here, for example:
  
module "kubernetes-compute" {
  source = "../modules/rancher/host"
  environment_vars = "${local.environment_vars}$" 
  external_driver_vars = "${local.external_driver_vars}"
  drivers = ["amazonec2", "digitalocean"]
  hostname = "compute"
  host_labels {
    compute = "true"
  }
}
*/

