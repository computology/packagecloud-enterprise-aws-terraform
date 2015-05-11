# packagecloud:enterprise AWS/RDS demo


## Requirements
Must have a hosted zone linked to a domain in route 53


## Setup

0. Have [terraform](http://terraform.io) installed (at least 0.42 due to AWS [RDS bugs](https://github.com/hashicorp/terraform/issues/777))

1. rename `terraform.tfvars.example` to `terraform.tfvars`

2. populate `terraform.tfvars` with the necessary variables

3. run `terraform apply`

4. ssh into to `packages.$given_domain`
