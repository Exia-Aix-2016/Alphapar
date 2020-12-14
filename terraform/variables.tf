
#===========================
#        PROXMOX
#===========================

variable "pm_api_url" {
    sensitive = true
}

variable "pm_user" {
    sensitive = true
}

variable "pm_password" {
    sensitive = true
}

#===========================
#      SERVICE SSHKEY
#===========================

variable "sshkey" {
    sensitive = true
}

variable "nodes" {
    sensitive = true
}