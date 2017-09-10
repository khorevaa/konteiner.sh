module "kubernetes-data-host" {
  source = "../modules/rancher-host"
  driver_config = "${local.driver_config}"
  global_host_config = "${local.global_host_config}"
  hostname = "data"
  host_labels {
    etcd = "true"
  }
 }

module "kubernetes-orchestration-host" {
  source = "../modules/rancher-host"
  driver_config = "${local.driver_config}"
  global_host_config = "${local.global_host_config}"
  hostname = "orchestration"
  host_labels {
    orchestration = "true"  	
  }
}

module "kubernetes-compute-host" {
  source = "../modules/rancher-host"
  driver_config = "${local.driver_config}"
  global_host_config = "${local.global_host_config}"
  hostname = "compute"
  host_labels {
    compute = "true"
  }
}
