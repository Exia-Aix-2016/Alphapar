
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
#      MISCELLANEOUS
#===========================

variable "sshkey" {
    sensitive = true
}

variable "nodes" {
    sensitive = true
}
variable "ci_password" {
    sensitive = true
}