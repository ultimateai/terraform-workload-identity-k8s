terraform {
  required_version = ">=1.0.0"

  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 3.80.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 3.30"
    }
  }
}