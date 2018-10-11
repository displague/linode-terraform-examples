## Linode Terraform examples

These demos demonstrate the simplest and more complex use cases of the Linode Terraform Provider.

### Requirements

1. Install Terraform https://www.terraform.io/intro/getting-started/install.html
2. Install `terraform-provider-linode` as described at https://github.com/displague/terraform-provider-linode
3. Get a Linode API Token (from https://cloud.linode.com)

### Files

`provider.tf` in the root contains the common config needed to run the examples. 

`examples/` has Terraform config files group by their numeric prefix.  The configs that start with "04" are intended to be used together.

Terraform will only consider the files in the root of this repo, so testing these different configurations means copying a numeric set of files from the `examples/` directory to the root.

### Usage

To use any of the demos:

```bash
read -sp "Linode Token: " LINODE_TOKEN; echo
export TF_VAR_linode_token=$LINODE_TOKEN
terraform init -get-plugins
```

Then, to try each demo,

```bash
rm 0*
DEMO=1 cp examples/0${DEMO}* .
```

Examples 01-03 do not include any `output` configs.  Use `terraform show` to find the IP address for login.

### Example 04

In example 04, try increasing or decreasing the `nginx_count` using environment variables or the `-var` command line parameter:

```bash
export TF_VAR_nginx_count=1
terraform apply
```

## Fin

Remove any resources that have been created with `terraform destroy`.

```bash
terraform destroy
```
