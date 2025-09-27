terraform {

  # this requires tf >=1.12
  # see previous versions of this file for backwards compatibilyt
  backend "oci" {
    namespace = "frur63upv21q"
    bucket    = "terraform-states"
    key       = "infra/terraform.tfstate"
  }

  required_providers {
    jq = {
      source  = "massdriver-cloud/jq"
      version = "0.2.1"
    }
    oci = {
      source  = "oracle/oci"
      version = "~> 7.19.0"
    }
  }
}
