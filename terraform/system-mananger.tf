data "aws_caller_identity" "current" {}

resource "aws_ssm_parameter" "secret" {
  name        = "/${data.aws_caller_identity.current.account_id}/hello"
  description = "The parameter description"
  type        = "String"
  value       = data.aws_caller_identity.current.account_id
}


resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
