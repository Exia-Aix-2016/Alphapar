
variable "pm_api_url" {}

variable "pm_user" {
    sensitive = true
}

variable "pm_password" {
    sensitive = true
}


variable "sshkey" {
    sensitive = true
}