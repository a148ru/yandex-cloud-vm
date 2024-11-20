variable "folder_id" {
  sensitive = true
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}
variable "instance_count" {
  type = number
  default = 1
  description = "count in int virtual machines create"
}

variable "instance_name" {
  type = string
  default = "vm"
  description = "prefix name for virtual machines"
}

variable "image_id" {
  type = string
  default = "ubuntu-2204-lts"
  description = "name image use for virtual machine"
}

variable vm_param {
  type = map(any)
  default = ({
      cores = 2,
      memory = 1,
      c_fract = 20
    })
    description = "cpu cores, memory in GB and percentage of processor used"
}

variable "vm_preemptible" {
  type = bool
  default = true
  description = "preemptible virtual machine: true or false"
}

variable "vms_ssh_port_enable" {
  type = number
  default = 1
  description = "enabled (1) or disablet (0) ssh port"
}

variable "vms_ssh_root_key" {
  type = string
  description = "need send string ssh key for user 'ubuntu'"
}

variable "subnet_id" {
  type = string
}

variable "platform" {
  type = string
  default = "standard-v3"
  description = "see platform in yandex.cloud: https://yandex.cloud/ru/docs/compute/concepts/vm-platforms"
}

variable "labels" {
  type = map(string)
  default = {
    "department" = "it"
  }
  description = "use label for vm"
}

variable "cloudinit" {
  type = string
  description = "cloud-init scrypt in string"
}