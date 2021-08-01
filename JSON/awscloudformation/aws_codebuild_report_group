resource "aws_kms_key" "samkey" {
  description             = "my test kms key"
  deletion_window_in_days = 7

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "kms-tf-1",
  "Statement": [
    {
      "Sid": "Enable IAM User Permissions",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "credentials_key" {
  bucket = "credentials_key"
}

resource "aws_codebuild_report_group" "report_yesisonline" {
  name = "yesisonline report group"
  type = "TEST"

  export_config {
    type = "S3"

    s3_destination {
      bucket              = aws_s3_bucket.credentials_key.id
      encryption_disabled = false
      encryption_key      = aws_kms_key.credentials_key.arn
      packaging           = "NONE"
      path                = "/some"
    }
  }
}
