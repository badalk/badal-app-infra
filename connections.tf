provider "google" {
  credentials = "${file("account.json")}"
  project     = "my-gcp-new-project"
  region      = "us-central1"
  zone        = "us-central1-c"
}

provider "google-beta" {
  credentials = "${file("account.json")}"
  project     = "my-gcp-new-project"
  region      = "us-central1"
  zone        = "us-central1-c"
}

terraform {
  backend "gcs" {

  }
}

# data "terraform_remote_state" "badal-tf-state" {
#   backend = "gcs"
#   config = {
#     bucket  = "pg-badal-tf-state"
#     prefix  = "prod"
#   }
# }

