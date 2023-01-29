variable "proxmox_host" {
  default = "pve"
}
variable "TEMPLATE_NAME" {
  default = "local:vztmpl/fedora-37-default_20221119_amd64.tar.xz"
}
variable "NAMESERVER" {
  default = "192.168.2.1"
}
variable "LXC_PW" {
  sensitive   = true
  description = "value of LXC password"
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
