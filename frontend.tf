resource "aws_security_group" "packagecloud_sg" {
  name = "packagecloud_sg"
  description = "Web and SSH"

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "packagecloud_frontend" {
    ami = "ami-5189a661"
    instance_type = "m3.large"
    key_name = "${var.key_pair_name}"
    security_groups = ["packagecloud_sg"]
}
