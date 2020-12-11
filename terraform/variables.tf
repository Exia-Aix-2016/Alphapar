
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

#===========================
#      SERVICE KEYCLOAK
#===========================

variable "kc_password" {
    sensitive = true
}

#===========================
#      SERVICE NEXCLOUD
#===========================

variable "nc_password" {
    sensitive = true
}

#===========================
#      SERVICE WEB
#===========================

variable "wb_password" {
     sensitive = true
}

#===========================
#      SERVICE WEB
#===========================

variable "db_password" {
    sensitive = true
}