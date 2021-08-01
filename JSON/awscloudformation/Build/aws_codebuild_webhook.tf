resource "aws_codebuild_webhook" "gitwebhook" {
  project_name = aws_codebuild_project.s3codeproject.name

  filter_group {
    filter {
      type    = "EVENT"
      pattern = "PUSH"
    }

    filter {
      type    = "HEAD_REF"
      pattern = "master"
    }
  }
}
