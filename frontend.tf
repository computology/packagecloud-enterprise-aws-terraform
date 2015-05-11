resource "aws_instance" "packagecloud_frontend" {
    ami = "ami-5189a661"
    instance_type = "m3.large"
}
