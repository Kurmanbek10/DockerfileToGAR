provider "google" {
  #   credentials = file("path/to/service-account-key.json") 
  project = "terraform-project-418516"
  region  = "us-central1"
}

resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-central1"
  repository_id = "app-registry"
  description   = "docker repository"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}