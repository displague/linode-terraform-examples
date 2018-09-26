resource "linode_instance" "foo" {
  region = "us-east"
  type = "g6-nanode-1"

  image = "linode/arch"
  swap_size = 512
  authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
  root_pass = "somethingawfu1"
}
