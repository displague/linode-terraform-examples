resource "linode_instance" "foo" {
  region = "us-east"
  type = "g6-nanode-1"

  image = "linode/debian9"
  swap_size = 512
  authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
  root_pass = "somethingawfu1"

  provisioner "remote-exec" {
    inline = <<EOS
echo Hello World > /root/helloworld
EOS
  }
}
