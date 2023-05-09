module "s3" {
    source                 = "./vendor/modules/s3/"
    bucket                 = "${var.spoothy_bucket_name}"
}

module "ec2" {
    source                 = "./vendor/modules/ec2/"
}
