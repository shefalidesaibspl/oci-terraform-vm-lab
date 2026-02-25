provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
  fingerprint  = var.fingerprint
  private_key  = var.private_key
  region       = var.region
}

data "oci_core_images" "os_images" {
  compartment_id           = var.compartment_ocid
  operating_system         = var.operating_system
  operating_system_version = var.operating_system_version

  # Key fix: only return images compatible with the chosen shape
  shape = var.shape

  sort_by    = "TIMECREATED"
  sort_order = "DESC"
}

resource "oci_core_instance" "vm" {
  compartment_id      = var.compartment_ocid
  availability_domain = var.availability_domain
  display_name        = var.instance_display_name
  shape               = var.shape

  shape_config {
    ocpus         = var.ocpus
    memory_in_gbs = var.memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = var.subnet_ocid
    assign_public_ip = true
  }

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.os_images.images[0].id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  freeform_tags = var.freeform_tags
}
