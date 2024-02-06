terraform {
  backend "s3" {
    region = "ca-central-1"
    bucket = "cnrst-exp-web-terraform-state-bucket"
    key    = "sg-web-frontend-dev/terraform.tfstate"
  }
}
