terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    nsxt = {
      source  = "hashicorp/vsphere"
      version = "~>2.1.1"
    }
  }
}