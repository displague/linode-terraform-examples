variable "region" {
  default = "us-central"
}

variable "ssh_key" {
  description = "SSH Public Key Fingerprint"
  default     = "~/.ssh/id_rsa.pub"
}

// random_pet is used for convenience in the example.
// if the pet exceeds 17 characters some of the example resources
// will fail for label length > 32 chars
resource "random_pet" "project" {
  prefix    = "tf_test"
  separator = "_"
}

resource "random_string" "password" {
  length  = 32
  special = true
}

variable "nginx_count" {
  description = "The number of nginx web serving Linodes to create"
  default     = 3
}
