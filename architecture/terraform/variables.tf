
variable "pm_api_url" {
    default = "https://192.168.20.53:8006/api2/json"
    description = "Access to proxmox's api"
}

variable "pm_user" {
    default = "root@pam"
    description = "user that will be used to connect to proxmox"
}

variable "pm_password" {}


variable "sshkey" {}