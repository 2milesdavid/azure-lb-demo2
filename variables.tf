variable "resource_group" {
	default = "user25-rg1"
}

variable "region" {

	default = "koreacentral"
}

variable "vnet" {

        default = "user25-vnet"
}

variable "pip" {

        default = "user25-pip1"
}

variable "lb" {

        default = "user25-lb"
}

variable "nsg" {

        default = "user25-nsg"
}

variable "bep" {

        default = "user25-bep"
}

variable "nic1" {
	default = "vm1-nic1"
}

variable "nic2" {
	default = "vm2-nic1"
}

variable "ip_conf_name1" {
	default = "vm1-ip-conf-name1"
}

variable "ip_conf_name2" {
	default = "vm2-ip-conf-name1"
}

variable "diag-storage" {
	default = "user25diagstorage1"
}

variable "avset" {
	default = "user25-as"
}

variable "vm1" {
	default = "user25-web1"
}

variable "vm2" {
	default = "user25-web2"
}
