variable "proxmox_host" {
  default = "pve"
}
variable "template_name" {
  default = "fedora-37-default_20221119_amd64"
}
variable "SSH_KEY" {
  sensitive   = true
  description = "value of ssh key"
}
variable "PM_API_URL" {
  description = "URL of the Proxmox API"
  sensitive   = false
}
variable "PM_USER" {
  description = "Username for the Proxmox API"
  sensitive   = true
}
variable "PM_PASS" {
  description = "Password for the Proxmox API"
  sensitive   = true
}