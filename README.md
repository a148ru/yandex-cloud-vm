#### for example

```rb
module "example-vm" {
  source = "git::https://github.com/a148ru/yandex-cloud-vm.git"
  folder_id = <id_folder>
  instance_count = 1
  instance_name = "example'
  subnet_id = <subnet-id>
  labels = { "department" = "testers" }
  vms_ssh_root_key = "~/.ssh/id-key.pub"
  cloudinit = "./cloud-init"
} 
```
read docs for module in [doc.md](./doc.md)
