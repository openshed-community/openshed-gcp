# openshed-gcp

This Terraform project allows to deploy Openshed on GCP.

## Terraform backend
This terraform deployment uses GCP bucket to store Terraform state.
In order to initialize this Terraform state, a bucket must be created in the GCP project.
This bucket name must be configured as `GCP_TERRAFORM_STATE_BUCKET` environement variable.

In addition, `GCP_TERRAFORM_STATE_PREFIX` can be configured allowing to store several states in the same bucket. If you have only 1 Openshed deployment you can let this parameter undefined. In that case, the Terraform state file will be stored in the bucket root. If you have several deployment (ex: prod and dev) then you can set `GCP_TERRAFORM_STATE_PREFIX` to `prod` for the production deployment and to `dev` for the development deployment. Hence, production state file will be stored under `prod` subdirectory in the bucket and development state file into `dev` directory.

Then run the command:
```
.\terraform-init
```
