terraform {
  backend "gcs" {
    #credentials = "terraform-proj-service-account.json"
    bucket      = "tf-dev-log-bucket"
    prefix      = "env/terraform-dev"
  }
}
