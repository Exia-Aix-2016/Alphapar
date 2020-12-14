#===========================
#             DOCKER
#===========================
resource "proxmox_vm_qemu" "docker1" {
    clone = "docker-template"
    name = "docker1"
    target_node = "hulk"
    full_clone = true
    os_type = "cloud-init"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"
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