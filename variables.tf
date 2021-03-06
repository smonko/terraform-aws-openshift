variable "platform_name" {
  description = "The name of the cluster that is used for tagging some resources"
}

variable "key_pair_private_key_path" {
  description = "AWS key pair that is used for instances of the cluster includes the bastion"
}

variable "operator_cidrs" {
  type        = "list"
  default     = ["0.0.0.0/0"]
  description = "CIDRS that is allowed from which master api can be accessed"
}

variable "public_cidrs" {
  type        = "list"
  default     = ["0.0.0.0/0"]
  description = "CIDRS that is allowed from which public users can access served services in the cluster"
}

variable "bastion_image_id" {}

variable "node_image_id" {}

variable "master_count" {
  default = 1
}

variable "compute_node_count" {
  default = 2
}

variable "bastion_instance_type" {
  default = "m4.large"
}

variable "master_instance_type" {
  default = "m4.large"
}

variable "compute_node_instance_type" {
  default = "m4.large"
}

variable "bastion_spot_price" {
  default = "0.1"
}

variable "master_spot_price" {
  default = "0.1"
}

variable "compute_node_spot_price" {
  default = "0.1"
}

variable "upstream" {
  description = "Sets true if you want to install Origin."
  default     = false
}

variable "rh_subscription_pool_id" {
  description = "Red Hat subscription pool id for OpenShift Container Platform"
  default     = ""
}

variable "rhn_username" {
  description = "Red Hat Network login username for registration system of the OpenShift Container Platform cluster"
  default     = ""
}

variable "rhn_password" {
  description = "Red Hat Network login password for registration system of the OpenShift Container Platform cluster"
  default     = ""
}

variable "openshift_major_version" {
  default = "3.10"
}

variable "openshift_cluster_admin_users" {
  type    = "list"
  default = ["admin"]
}

# Domains

variable "platform_domain" {
  description = "Public DNS subdomain for access to services served in the cluster"
  default     = ""
}

variable "platform_domain_administrator_email" {
  default = ""
}
