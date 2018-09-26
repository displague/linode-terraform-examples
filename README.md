Linode Terraform examples to demonstrate the simplest use case and more complex use cases.

Install `terraform-provider-linode` as described at https://github.com/displague/terraform-provider-linode

`provider.tf` in the root contains the common config needed to run the examples. Set the Linode API Token (from https://cloud.linode.com)
to use any of the demos:

```bash
read -sp "Linode Token: " LINODE_TOKEN
export TF_VAR_linode_token=$LINODE_TOKEN
terraform init -get-plugins
```

To try each demo,

```bash
rm 0*
DEMO=1 cp examples/0${DEMO}* .
```

Examples 01-03 do not include any `output` configs.  Use `terraform show` to find the IP address for login.

In example 04, try increasing or decreasing the `nginx_count` using environment variables or the `-var` command line parameter:

```bash
export TF_VAR_nginx_count=1
terraform apply
```


