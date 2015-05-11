resource "aws_db_instance" "packagecloud_database" {
    identifier = "packagecloud-database"
    allocated_storage = 100
    storage_type = "io1"
    iops = 1000
    multi_az = true
    engine = "mysql"
    engine_version = "5.5.41"
    instance_class = "db.m3.large"
    username = "awsuser"
    password = "dbpassword123!"
    db_subnet_group_name = "default"
    parameter_group_name = "default.mysql5.5"
}

resource "aws_route53_record" "db" {
   zone_id = "${var.hosted_zone_id}"
   name = "db.${var.domain_name}"
   type = "CNAME"
   ttl = "300"
   records = ["${aws_db_instance.packagecloud_database.address}"]
}
