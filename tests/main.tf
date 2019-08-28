module "my_awesome_user" {
  source    = "../"
  name      = "user"
  stage     = "production"
  namespace = "sweetops"
}

module "my_awesome_user_1" {
  source     = "../"
  name       = "user"
  attributes = ["1"]
  stage      = "production"
  namespace  = "sweetops"
  enabled    = "false"
}

module "my_awesome_user_3" {
  source     = "../"
  name       = "user"
  stage      = "production"
  namespace  = "sweetops"
  attributes = ["2"]
  enabled    = "true"
}
