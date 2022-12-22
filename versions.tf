terraform {
  required_version = ">= 0.15.5, <= 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.30"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 2.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 2.2"
    }
  }
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}
