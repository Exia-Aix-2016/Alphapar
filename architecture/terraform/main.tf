resource "proxmox_lxc" "service-keycloak" {
    features {
        nesting = true
    }
    hostname = "service-keycloak"
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
    ssh_public_keys = var.sshkey



    memory = 1024
    ostemplate = "cephfs:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
    password = var.pm_password
 #  pool = "terraform"
    target_node = "hulk"
    unprivileged = true
}