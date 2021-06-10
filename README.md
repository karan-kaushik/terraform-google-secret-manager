# Google Cloud Secret Manager Module

This module makes it easy to create a secret in Secret Manager

## Usage

Basic usage of this module is as follows:

```hcl
module "secret_manager_secret_1" {
  source      = "../../../../modules/secret_manager/"
  project_id  = var.project_id
  region      = var.region
  secret_id   = var.secret_id
  labels      = var.labels
  secret_data = var.secret_data
}
```

- Provide the values in terraform.tfvars file

```hcl
project_id  = "project-id"
region      = "region"
secret_id   = "test-secret-id"
secret_data = "secret-data"
labels      = {
    owner = "secret-owner"
    }
```

- Then perform the following commands in the directory:

  `terraform init` to get the plugins

  `terraform plan` to see the infrastructure plan

  `terraform apply` to apply the infrastructure build

  `terraform destroy` to destroy the built infrastructure
