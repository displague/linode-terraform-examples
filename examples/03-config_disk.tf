resource "linode_instance" "foo" {
  region = "us-east"
  type = "g6-nanode-1"

  disk {
    label = "fedora"
    image = "linode/fedora24"
    size = 3000
    root_pass = "$$$fedora123"
    authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
  }

  disk {
    label = "debian"
    image = "linode/debian9"
    size = 3000
    root_pass = "$$$debian123"
    authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
  }

  config {
    label = "boot"
    devices {
      sda = { disk_label = "debian" }
      sdb = { disk_label = "fedora" }
    }

    root_device = "/dev/sda"
  }

    boot_config_label = "boot"
}
