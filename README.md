# openshed-gcp

This Terraform project allows to deploy Openshed on GCP.

## Terraform backend
This terraform deployment uses GCP bucket to store Terraform state.
In order to initialize this Terraform state, a bucket must be created in the GCP project.
This bucket name must be configured as `GCP_TERRAFORM_STATE_BUCKET` environement variable.
Then run the command:
```
.\terraform-init
```
