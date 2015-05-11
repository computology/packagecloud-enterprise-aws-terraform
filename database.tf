resource "aws_db_instance" "packagecloud_database" {
    identifier = "packagecloud_database"
    allocated_storage = 10
    storage_type = "io1"
    iops = "1000"
    engine = "mysql"
    engine_version = "5.5.41"
    instance_class = "db.m3.large"
    username = "awsuser"
    password = "dbpassword123!"
    db_subnet_group_name = "packagecloud_allow_all"
    parameter_group_name = "default.mysql5.5"
}
