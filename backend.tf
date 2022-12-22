terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ultimateai"

    workspaces {
      name = "abc"
    }
  }
}
