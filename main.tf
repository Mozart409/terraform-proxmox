terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url      = var.PM_API_URL
  pm_user         = var.PM_USER
  pm_password     = var.PM_PASS
  pm_tls_insecure = true
  pm_log_enable   = false
  pm_log_file     = "terraform-plugin-proxmox.log"
}
# resource is formatted to be "[type]" "[entity_name]" so in this case
# we are looking to create a proxmox_vm_qemu entity named test_server
resource "proxmox_lxc" "staging_server" {

  count        = 1 # just want 1 for now, set to 0 and apply to destroy VM
  vmid         = 151
  target_node  = "pve"
  hostname     = "staging-server"
  ostemplate   = var.TEMPLATE_NAME
  password     = var.LXC_PW
  unprivileged = true
  memory       = 512
  swap         = 256
  cores        = 1
  nameserver   = var.NAMESERVER

  features {
    fuse    = false
    nesting = true
  }


  // Terraform will crash without rootfs defined
  rootfs {
    storage = "ZFS_POOL"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "192.168.2.151/24"
    gw     = var.NAMESERVER

  }


  # sshkeys set using variables. the variable contains the text of the key.
  ssh_public_keys = <<EOF
  ${var.SSH_KEY}
  EOF
}

