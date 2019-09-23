module "my_vpc" {
  source = "github.com/badalk/badal-tf-module-gcp-vpc-auto?ref=v0.0.1"
  name   = "badal-vpc-${terraform.workspace}"

}

module "my_vm" {
  source      = "github.com/badalk/badal-tf-module-gcp-vm?ref=v0.0.1"
  serverName  = "badal-vm-${terraform.workspace}"
  nodeType    = "n1-standard-1"
  zone        = "us-central1-a"
  subnetName  = "default"
  networkName = "default"

}

output "instance_ip_addr" {
  value = "${module.my_vm.instance_ip_addr}"
}
