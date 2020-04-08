# terraform-aci-network-centric

Some sample Terraform code for deploying ACI in network centric mode. 


## Prerequisites

* Terraform
    - https://www.terraform.io/downloads.html
    - https://learn.hashicorp.com/terraform/getting-started/install.html


Cert based authentication is recommended:
https://www.terraform.io/docs/providers/aci/index.html#how-to-add-certificate-to-the-cisco-apic-local-user

Example

```
openssl req -new -newkey rsa:1024 -days 36500 -nodes -x509 -keyout admin.key -out admin.crt -subj '/CN=Admin/O=Your Company/C=US'
```

## usage

1. make a copy of `terraform.tfvars.example` to `terraform.tfvars` and update the new file with appropriate access information for APIC.  

```
terraform init
terraform plan
terraform apply
```