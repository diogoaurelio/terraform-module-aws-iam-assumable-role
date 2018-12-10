Terraform AWS module for creating an AWS IAM user assumable role
================================================================

Generic repository for a terraform module for AWS IAM user assumable roles

![Image of Terraform](https://i.imgur.com/Jj2T26b.jpg)

# Table of content

- [Introduction](#intro)
- [Usage](#usage)
- [Release log](#release-log)
- [Module versioning & git](#module-versioning-&-git)
- [Local terraform setup](#local-terraform-setup)
- [Authors/Contributors](#authorscontributors)


# Intro

Module to create a AWS IAM role that can be assumable by users


# Usage

Example usage:

```hcl
module "ops_web_app_role" {
  source                        = "github.com/diogoaurelio/terraform-module-aws-iam-assumable-role"
  version                       = "v0.0.1"
  account_id                    = "${data.aws_caller_identity.current.account_id}"
  iam_role_name                 = "iam-role-ops-web-app"
}
```


# Release log

Whenever you bump this module's version, please add a summary description of the changes performed, so that collaboration across developers becomes easier.

* version v0.0.1 - first module release

# Module versioning & git

To update this module please follow the following proceedure:

1) make your changes following the normal git workflow
2) after merging the your changes to master, comes the most important part, namely versioning using tags:

```bash
git tag v0.0.2
```

3) push the tag to the remote git repository:
```bash
git push origin master tag v0.0.2
```

# Local terraform setup

* [Install Terraform](https://www.terraform.io/)

```bash
brew install terraform
```

* In order to automatic format terraform code (and have it cleaner), we use pre-commit hook. To [install pre-commit](https://pre-commit.com/#install).
* Run [pre-commit install](https://pre-commit.com/#usage) to setup locally hook for terraform code cleanup.

```bash
pre-commit install
```


# Authors/Contributors

See the list of [contributors](https://github.com/diogoaurelio/terraform-module-aws-compute-lambda/graphs/contributors) who participated in this project.