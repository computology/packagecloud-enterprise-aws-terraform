# packagecloud:enterprise AWS/RDS demo


## Overview
This is a set of terraform recipes that will setup a demo infrastructure suitable for running [packagecloud:enterprise](https://enterprise.packagecloud.io) on AWS.

## Requirements
Must have a hosted zone linked to a domain in route 53

## Setup

0. Have [terraform](http://terraform.io) installed (at least 0.42 due to AWS [RDS bugs](https://github.com/hashicorp/terraform/issues/777))

1. rename `terraform.tfvars.example` to `terraform.tfvars`

2. populate `terraform.tfvars` with the necessary variables

3. run `terraform apply`

## End Result

You should now have:

* front end instance (`packages.$given_domain`) running Ubuntu 14.04
* RDS instance (`db.$given_domain`) running Mysql 5.5 with 1000 Provisioned IOPS, running in Multi AZ mode.

Default Mysql username is `awsuser`

Default Mysql password is `dbpassword123!`
