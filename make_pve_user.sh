#!/bin/bash

# Login to the Proxmox VE host via SSH or the web interface
# click on datacenter / pve / shell

# Create a role for terraform-prov
pveum role add TerraformProv -privs "VM.Allocate VM.Clone VM.Config.CDROM VM.Config.CPU VM.Config.Cloudinit VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Monitor VM.Audit VM.PowerMgmt Datastore.AllocateSpace Datastore.Audit"

# Create a user for terraform-prov
# you can use pwgen 64 -c 1 to generate a random password
pveum user add terraform-prov@pve --password XYZ

# Add the user to the TerraformProv role
pveum aclmod / -user terraform-prov@pve -role TerraformProv
