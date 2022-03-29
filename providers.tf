terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "~>2.1.1"
    }
  }
}