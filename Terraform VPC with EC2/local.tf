locals {
  env = "staging"
  project = "practice"

  tags = {
    name = "${var.env}-${var.team}"
  }
}