## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.8.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.vm_instance](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.os_image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudinit"></a> [cloudinit](#input\_cloudinit) | cloud-init scrypt in string | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | name image use for virtual machine | `string` | `"ubuntu-2204-lts"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | count in int virtual machines create | `number` | `1` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | prefix name for virtual machines | `string` | `"vm"` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | use label for vm | `map(string)` | <pre>{<br/>  "department": "it"<br/>}</pre> | no |
| <a name="input_platform"></a> [platform](#input\_platform) | see platform in yandex.cloud: https://yandex.cloud/ru/docs/compute/concepts/vm-platforms | `string` | `"standard-v3"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | n/a | yes |
| <a name="input_vm_param"></a> [vm\_param](#input\_vm\_param) | cpu cores, memory in GB and percentage of processor used | `map(any)` | <pre>{<br/>  "c_fract": 20,<br/>  "cores": 2,<br/>  "memory": 1<br/>}</pre> | no |
| <a name="input_vm_preemptible"></a> [vm\_preemptible](#input\_vm\_preemptible) | preemptible virtual machine: true or false | `bool` | `true` | no |
| <a name="input_vms_ssh_port_enable"></a> [vms\_ssh\_port\_enable](#input\_vms\_ssh\_port\_enable) | enabled (1) or disablet (0) ssh port | `number` | `1` | no |
| <a name="input_vms_ssh_root_key"></a> [vms\_ssh\_root\_key](#input\_vms\_ssh\_root\_key) | need send string ssh key for user 'ubuntu' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance"></a> [instance](#output\_instance) | n/a |
