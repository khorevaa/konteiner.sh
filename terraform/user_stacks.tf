resource "rancher_stack" "prometheus" {
  name = "prometheus"
  environment_id = "${rancher_environment.environment.id}"
  docker_compose = "${file("${path.cwd}/compose/prometheus/docker-compose.yml")}"
  rancher_compose = "${file("${path.cwd}/compose/prometheus/rancher-compose.yml")}"
  start_on_create = "true"
}

