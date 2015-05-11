variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_pair_name" {}
variable "domain_name" {}
variable "database_user" {
    default = "awsuser"
}
variable "database_password" {
    default = "dbpassword123!"
}
variable "aws_region" {
    default = "us-west-2"
}
variable "hosted_zone_id" {}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}
