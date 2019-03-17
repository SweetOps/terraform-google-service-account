module "my_awesome_user" {
  source    = "git::https://github.com/SweetOps/terraform-google-service-account.git"
  name      = "user"
  stage     = "production"
  namespace = "sweetops"
  role      = "roles/storage.objectViewer"
}
