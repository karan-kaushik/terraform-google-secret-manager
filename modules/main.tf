resource "google_secret_manager_secret" "secret-basic" {
  project = var.project_id
  secret_id = var.secret_id

  labels = var.labels

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "secret-version-basic" {
  secret = google_secret_manager_secret.secret-basic.id
  secret_data = var.secret_data
}