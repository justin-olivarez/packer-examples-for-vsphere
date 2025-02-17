/*
    DESCRIPTION:
    CentOS Stream 8 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "centos-stream-gui"
vm_guest_os_version  = "8"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "centos8_64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"
vm_cdrom_type            = "sata"
vm_cpu_count             = 4
vm_cpu_cores             = 2
vm_cpu_hot_add           = false
vm_mem_size              = 8192
vm_mem_hot_add           = true
vm_disk_size             = 61440
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"

// Removable Media Settings
iso_url            = null
iso_path           = "iso/linux/centos"
iso_file           = "CentOS-Stream-8-x86_64-latest-dvd1.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "682d77784d1df33d44c581d3ae5e5added08dd6fb3b110cee0d725be3c650735"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
