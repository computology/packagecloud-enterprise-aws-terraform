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
