# terraform-google-service-account

Terraform module to provision service account with normalized name.

## Usage

```terraform
module "s3_service_account" {
  source     = "git::https://github.com/SweetOps/terraform-google-service-account.git?ref=master"
  name      = "awesome"
  stage     = "production"
  namespace = "sweetops"
}
```

<!--- BEGIN_TF_DOCS --->

<!--- END_TF_DOCS --->

## License
The Apache-2.0 license