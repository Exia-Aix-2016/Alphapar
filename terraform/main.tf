#===========================
#             DOCKER
#===========================

locals {
    nodes = ["hulk", "ironman", "thor"]
}

resource "proxmox_vm_qemu" "vm-docker" {
    for_each = toset(local.nodes)
    clone = "docker-template"
    name = "docker-${each.value}" 
    target_node = each.value
    full_clone = true
    os_type = "cloud-init"
    cores = 2
    sockets = 1
    memory = 4096
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"
    

    ciuser = "dockeradmin"
    cipassword = var.ci_password
    ipconfig0 = "ip=dhcp"
    sshkeys = <<EOF
    ${var.sshkey}
    EOF
    

    disk {
        size = "100G"
        type = "scsi"
        storage = "pool"
    }
    network {
        model = "virtio"
        bridge = "vmbr0"
    }
}