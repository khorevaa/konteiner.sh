resource "rancher_volume" "mysql" {
  name = "mysql"
  driver = "rancher-nfs"
  environment_id = "${rancher_environment.environment.id}"
  depends_on = [ "rancher_stack.nfs" ]
}
