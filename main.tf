module "s3" {
    source                 = "./vendor/modules/s3/"
    spoothy_bucket_tag_name = "${var.spoothy_bucket_tag_name}"
    spoothy_bucket_tag_env  = "${var.spoothy_bucket_tag_env}"
}

module "ec2" {
    source                 = "./vendor/modules/ec2/"
    instance_type          = "${var.instance_type}"

}
