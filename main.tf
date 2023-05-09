module "s3" {
    source                 = "./vendor/modules/s3/"
    spoothy-bucket-name     = "${var.spoothy-bucket-name}"
    spoothy-bucket-tag_name = "${var.spoothy-bucket-tag-name}"
    spoothy-bucket-tag_env  = "${var.spoothy-bucket-tag-env}"
}

module "ec2" {
    source                 = "./vendor/modules/ec2/"
    instance_type          = "${var.instance_type}"
    ami_id                 = "${var.ami_id}"
    spoothy-bucket-tag_name = "${var.spoothy-bucket-tag-name}"
    spoothy-bucket-tag_env  = "${var.spoothy-bucket-tag-env}"

}


