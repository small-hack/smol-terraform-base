/**
 * # Cool Example module for dogs
 *
 * Everything in this comment block will get extracted.
 *
 * You can put simple text or complete Markdown content
 * here. Subsequently if you want to render AsciiDoc format
 * you can put AsciiDoc compatible content in this comment
 * block.
 */


module "cool-example-module-for-dogs" {
  source = "github.com/cloudymax/modules-gcp-tf-gke?ref=v0.0.1"

  # Projec Options
  project_id        = "test"
  state_bucket_name = "test"
  state_path        = "terraform/state"

  # Geographic Options
  main_availability_zone = "europe-west4-a"
  region                 = "europe-west4"

  # Network
  vpc_network_name        = "default"
  vpc_network_subnet_name = "default"

  # GKE Cluster Options
  use_default_node_pool = "false"
  cluster_name          = "three-vms-in-a-trenchcoat"
  node_service_account  = "test"
  machine_type          = "e2-medium"
  disk_type             = "pd-ssd"

  # Autoscaling Options
  autoscaling_enabled  = "true"
  autoscaling_strategy = "OPTIMIZE_UTILIZATION"
  autoscaling_min_cpu  = "1"
  autoscaling_max_cpu  = "80"
  autoscaling_min_mem  = "10"
  autoscaling_max_mem  = "100"

  # App deployment vars
  container_image = "nginxdemos/hello"
  container_name  = "hello"
  replicas        = 3
}
