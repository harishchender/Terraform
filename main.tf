provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQ3EGQWKUR6AEKGPK"
  secret_key = "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"
}

data "aws_s3_bucket" "mybucket" {
   bucket = "harish-bucket"
}

output "my_bucket_name" {
   value = "${data.aws_s3_bucket.mybucket.bucket}"
}
