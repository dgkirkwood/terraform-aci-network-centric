# terraform-aci-network-centric

Some sample Terraform code for deploying ACI in network centric mode. 


## Prerequisites

* Terraform
    - https://www.terraform.io/downloads.html
    - https://learn.hashicorp.com/terraform/getting-started/install.html

## usage

1. make a copy of `terraform.tfvars.example` to `terraform.tfvars` and update the new file with appropriate access information for APIC.  

```
terraform init
terraform plan
terraform apply
```