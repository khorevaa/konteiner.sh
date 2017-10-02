module "k8s-compute" {
  host_count = 2
  source = "../modules/rancher/host"
  environment_id = "${rancher_environment.environment.id}"
  external_driver_vars = "${local.external_driver_vars}"
  drivers = ["amazonec2"]
  hostname = "compute"
  host_labels {
    compute = "true"
  }
}

module "k8s-orchestration" {
  host_count = 2
  source = "../modules/rancher/host"
  environment_id = "${rancher_environment.environment.id}"
  external_driver_vars = "${local.external_driver_vars}"
  drivers = ["amazonec2"]
  hostname = "orchestration"
  host_labels {
    orchestration = "true"
  }
}

module "k8s-data" {
  host_count = 3
  source = "../modules/rancher/host"
  environment_id = "${rancher_environment.environment.id}"
  external_driver_vars = "${local.external_driver_vars}"
  drivers = ["amazonec2"]
  hostname = "data"
  host_labels {
    data = "true"
  }
}
