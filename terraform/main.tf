#===========================
#      SERVICE KEYCLOAK
#===========================
resource "proxmox_lxc" "service-keycloak" {
    ostemplate = "cephfs:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
    hostname = "service-keycloak"
    ssh_public_keys = var.sshkey
    password = var.kc_password
    memory = 1024
    target_node = "hulk"
    unprivileged = true

    features {
        nesting = true
    }

    network {
        name = "eno2"
        bridge = "vmbr0"
        ip = "dhcp"
        ip6 = "dhcp"
    }

    rootfs {
        storage = "pool"
        size = "16G"
    }

    lifecycle { 
     ignore_changes = [
            network,
            target_node,
        ]
    }
}

#===========================
#      SERVICE NEXCLOUD
#===========================
resource "proxmox_lxc" "service-nextcloud" {
    ostemplate = "cephfs:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"   
    hostname = "service-nextcloud"
    password = var.nc_password
    ssh_public_keys = var.sshkey
    memory = 1024
    target_node = "hulk"
    unprivileged = true

    features {
        nesting = true
    }
    
    network {
        name = "eno2"
        bridge = "vmbr0"
        ip = "dhcp"
        ip6 = "dhcp"
    }

    rootfs {
        storage = "pool"
        size = "50G"
    }

    lifecycle { 
     ignore_changes = [
            network,
            target_node,
        ]
    }
}

#===========================
#      SERVICE WEB
#===========================
resource "proxmox_lxc" "service-web" {
    ostemplate = "cephfs:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
    hostname = "service-web"
    target_node = "hulk"
    password = var.wb_password
    ssh_public_keys = var.sshkey
    unprivileged = true 
    memory = 1024
    
    features {
        nesting = true
    }

    network {
        name = "eno2"
        bridge = "vmbr0"
        ip = "dhcp"
        ip6 = "dhcp"
    }

    rootfs {
        storage = "pool"
        size = "50G"
    }

    lifecycle { 
     ignore_changes = [
            network,
            target_node,
        ]
    }
}

#===========================
#      SERVICE WEB
#===========================

resource "proxmox_lxc" "service-database" {
    ostemplate = "cephfs:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
    hostname = "service-database"
    target_node = "hulk"
    password = var.wb_password
    ssh_public_keys = var.sshkey
    unprivileged = true 
    memory = 1024
    
    features {
        nesting = true
    }

    network {
        name = "eno2"
        bridge = "vmbr0"
        ip = "dhcp"
        ip6 = "dhcp"
    }

    rootfs {
        storage = "pool"
        size = "50G"
    }

    lifecycle { 
     ignore_changes = [
            network,
            target_node,
        ]
    } 
}