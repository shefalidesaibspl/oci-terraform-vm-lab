region = "ap-mumbai-1"

compartment_ocid = "ocid1.compartment.oc1..aaaaaaaaskt46d454ryspe4h2g7u25obrajosnnbldpm5ynye3qqt2n4gzlq"
subnet_ocid      = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaasij7qlrg73ebgcwmveduirnmuab6nub2wpgvxvbaxo4anlivmt2q"

availability_domain = "GjHv:AP-MUMBAI-1-AD-1"

instance_display_name = "devops-lab-vm-01-test"

shape         = "VM.Standard.E4.Flex"
ocpus         = 1
memory_in_gbs = 6

ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOib2dZknOdOFJIXHjTPDar8u4bCNu5mvDXN+rhRaFed oci-devops-lab"

# Paste the Image OCID you copied from OCI (Oracle Linux 9 or Ubuntu 22.04) in ap-mumbai-1
image_ocid = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaak2cwx4xjgmmtxoyodqya5cmsfblxi56tmke7mnohv3hyyoz4ilyq"

freeform_tags = {
  owner       = "shefali"
  purpose     = "devops-lab"
  cost_center = "learning"
}
