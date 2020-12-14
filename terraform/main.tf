#===========================
#             DOCKER
#===========================

resource "proxmox_vm_qemu" "vm-docker" {
    clone = "docker-template"
    for_each = toset(nodes)
    name = "docker-${each.value}" 
    target_node = each.value
    full_clone = true
    os_type = "cloud-init"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"
    
    #USER MANAGEMENT
    ciuser = "${each.value}"
    cipassword = "{{ ci_password }}"
    sshkeys = "{{ sshkey }}"
    

    disk {
        size = "100G"
        type = "scsi"
        storage = "pool"
        iothread = true
    }
    network {
        model = "virtio"
        bridge = "vmbr0"
    }


}