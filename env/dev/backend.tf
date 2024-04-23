terraform {
  backend "gcs" {
    #credentials = "terraform-proj-service-account.json"
    bucket      = "terraform-pro-tf-backend"
    prefix      = "env/terraform-test"
  }
}
