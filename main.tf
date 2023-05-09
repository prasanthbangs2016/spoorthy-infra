module "s3" {
    source                 = "./vendor/modules/s3/"
    bucket                 = "${var.spoothy_bucket_name}"
}

module "ec2" {
    source                 = "./vendor/modules/ec2/"
    ami                    = "${var.ami_id}"
    instance_type          = "${var.instance_type}"
    iam_instance_profile   = aws_iam_instance_profile.s3_bucket

}
