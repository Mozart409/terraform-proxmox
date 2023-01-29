# Terraform Proxmox Template

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Contributing](../CONTRIBUTING.md)

## About <a name = "about"></a>

This is my base template for creating lxc containers. It is based on the <i>Telmate/proxmox</i>.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them.

```sh
terraform --version
```

Optional but useful, make.

```sh
make --version
```

Clone the project.

```sh
git clone https://github.com/Mozart409/terraform-proxmox <YOUR_FOLDER_NAME>
cd <YOUR_FOLDER_NAME>
```

Change the variables in the <b>terraform.tfvars</b> file to your needs.

Change the template name in the <b>vars.tf</b> file to your needs.

```sh
variable "TEMPLATE_NAME" {
    default = "fedora-37-default_20221119_amd64"
}
```

### Installing

A step by step series of examples that tell you how to get a development env running.

Say what the step will be

```sh
terraform init
```

And plan the deployment

```sh
make plan
```

And deploy

```sh
make apply
```

End with an example of getting some data out of the system or using it for a little demo.
