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
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 3306
      to_port = 3306
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 3306
      to_port = 3306 
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
    ami = "${var.ami_id}"
    instance_type = "m3.large"
    key_name = "${var.key_pair_name}"
    security_groups = ["packagecloud_sg"]
}

resource "aws_route53_record" "packages" {
   zone_id = "${var.hosted_zone_id}"
   name = "packages.${var.domain_name}"
   type = "A"
   ttl = "300"
   records = ["${aws_instance.packagecloud_frontend.public_ip}"]
}
