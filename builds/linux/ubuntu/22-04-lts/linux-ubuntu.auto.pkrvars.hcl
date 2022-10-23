/*
    DESCRIPTION:
    Ubuntu Server 22.04 LTS variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
// Modifying the 'vm_guest_os_name' will modify the OVF template name used in Content Library
// For example, linux-ubuntu-desktop-22.04lts-v22.10
vm_guest_os_name     = "ubuntu-desktop"
vm_guest_os_version  = "22.04lts"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "ubuntu64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"
vm_cdrom_type            = "sata"
// vm_cpu_count is the ammount CPU's you want to give the VM
vm_cpu_count             = 4
// vm_cpu_cores is the 'Cores per Socket'
vm_cpu_cores             = 2
vm_cpu_hot_add           = true
vm_mem_size              = 8192
vm_mem_hot_add           = true
// When modifying the disk size, you will also have to modify
// the partition table sizes to use new disk size in 'user-data.pkrtpl.hcl'
vm_disk_size             = 61440
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"

// Removable Media Settings
iso_url            = null
iso_path           = "iso/linux/ubuntu"
iso_file           = "ubuntu-22.04.1-live-server-amd64.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "10f19c5b2b8d6db711582e0e27f5116296c34fe4b313ba45f9b201a5007056cb"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "5s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
