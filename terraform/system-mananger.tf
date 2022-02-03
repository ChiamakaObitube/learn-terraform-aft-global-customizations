data "aws_caller_identity" "current" {}

resource "aws_ssm_parameter" "secret" {
  name        = "/${data.aws_caller_identity.current.account_id}/hello"
  description = "The parameter description"
  type        = "String"
  value       = data.aws_caller_identity.current.account_id
}


resource "aws_ssm_parameter" "secret" {
  name        = "/${data.aws_caller_identity.current.account_id}/world"
  description = "The parameter description"
  type        = "String"
  value       = data.aws_caller_identity.current.account_id
}
