module "secret_manager_secret_1" {
  source      = "../modules/"
  project_id  = var.project_id
  region      = var.region
  secret_id   = var.secret_id
  labels      = var.labels
  secret_data = var.secret_data
}