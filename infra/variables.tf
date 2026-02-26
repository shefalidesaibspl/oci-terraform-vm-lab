variable "tenancy_ocid" { type = string }
variable "user_ocid" { type = string }
variable "fingerprint" { type = string }
variable "private_key" { type = string }

variable "region" { type = string }

variable "compartment_ocid" { type = string }
variable "subnet_ocid" { type = string }

variable "availability_domain" {
  type        = string
  description = "Example: kIdk:AP-MUMBAI-1-AD-1"
}

variable "instance_display_name" { type = string }

variable "shape" { type = string }
variable "ocpus" { type = number }
variable "memory_in_gbs" { type = number }

variable "ssh_public_key" { type = string }

variable "operating_system" {
  type        = string
  description = "Ubuntu or Oracle Linux"
}

variable "image_ocid" { type = string }

variable "freeform_tags" {
  type    = map(string)
  default = {}
}
