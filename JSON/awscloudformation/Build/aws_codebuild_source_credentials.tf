resource "aws_codebuild_source_credential" "credes" {
  auth_type   = "PERSONAL_ACCESS_TOKEN"
  server_type = "GITHUB"
  token       = "credes"
}
