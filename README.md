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
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| google | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| google | >= 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_tag\_map | Additional tags for appending to tags\_as\_list\_of\_maps. Not added to `tags`. | `map(string)` | `{}` | no |
| attributes | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| context | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": null,<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {}<br>}</pre> | no |
| create\_service\_account\_key | Whether to create service account key | `bool` | `true` | no |
| delimiter | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| description | A text description of the service account. | `string` | `"Managed by Terraform"` | no |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| environment | Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| id\_length\_limit | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for default, which is `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| keepers | Arbitrary map of values that, when changed, will trigger a new key to be generated. | `map(string)` | `null` | no |
| key\_algorithm | The algorithm used to generate the key. Possible values: `KEY_ALG_UNSPECIFIED`, `KEY_ALG_RSA_1024`, `KEY_ALG_RSA_2048` | `string` | `"KEY_ALG_RSA_2048"` | no |
| label\_key\_case | The letter case of label keys (`tag` names) (i.e. `name`, `namespace`, `environment`, `stage`, `attributes`) to use in `tags`.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `"lower"` | no |
| label\_order | The naming order of the id output and Name tag.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 5 elements, but at least one must be present. | `list(string)` | `null` | no |
| label\_value\_case | The letter case of output label values (also used in `tags` and `id`).<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Default value: `lower`. | `string` | `null` | no |
| name | Solution name, e.g. 'app' or 'jenkins' | `string` | `null` | no |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `null` | no |
| private\_key\_type | The output format of the private key. | `string` | `"TYPE_GOOGLE_CREDENTIALS_FILE"` | no |
| project | The project in which the resource belongs. If it is not provided, the provider project is used. | `string` | `null` | no |
| public\_key\_data | Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509\_PEM and it conflicts with `public_key_type` and `private_key_type`. | `string` | `null` | no |
| public\_key\_type | The output format of the public key requested. | `string` | `"TYPE_X509_PEM_FILE"` | no |
| regex\_replace\_chars | Regex to replace chars with empty string in `namespace`, `environment`, `stage` and `name`.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| roles | The list of roles that should be applied to service account. | `list(string)` | `[]` | no |
| stage | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| email | The e-mail address of the service account. |
| id | The id of the service account. |
| key\_id | The id of the service account key. |
| key\_name | The name of the service account key. |
| name | The fully-qualified name of the service account. |
| private\_key | The private key in JSON format, base64 encoded. |
| public\_key | The public key, base64 encoded. |
| unique\_id | The unique id of the service account. |

<!--- END_TF_DOCS --->

## License
The Apache-2.0 license