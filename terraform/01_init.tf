# Configure the Google Cloud provider
terraform {
  # backend "gcs" {
  #   bucket      = "roberth3x89-tfstate"
  #   path        = "terraform.tfstate"
  #   project     = "roberth3x89"
  #   credentials = "key.json"
  # }
}

provider "google" {
  credentials = "${file("key.json")}"
  # project     = "roberth3x89"
  project     = "${var.project_name}"
  region      = "us-central1"
  version = "0.1.3"
}
