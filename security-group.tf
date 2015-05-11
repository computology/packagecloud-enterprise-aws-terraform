resource "aws_security_group" "packagecloud_allow_all" {
  name = "packagecloud_allow_all"
  description = "Allow all traffic"

  ingress {
      from_port = 0
      to_port = 65535
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 65535
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_security_group" "packagecloud_allow_all" {
    name = "packagecloud_rds_allow_all"
    description = "RDS default security group"

    ingress {
        security_group_name = "packagecloud_allow_all"
    }
}
