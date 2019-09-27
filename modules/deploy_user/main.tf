data "aws_iam_policy_document" "default" {
  statement {
    sid      = "DeployerGetBucket"
    effect   = "Allow"
    actions  = [
      "s3:GetBucketLocation",
      "s3:ListBucket"
    ]
    resources = [
      var.s3_bucket_arn
    ]
  }

  statement {
    sid      = "DeployerGetObject"
    effect   = "Allow"
    actions  = [
      "s3:GetObject"
    ]
    resources = [
      "${var.s3_bucket_arn}/*"
    ]
  }
}

resource "aws_iam_user" "default" {
  name          = var.name
  path          = var.path
  force_destroy = var.force_destroy
  tags          = var.tags
}

resource "aws_iam_user_policy" "default" {
  name   = aws_iam_user.default.name
  user   = aws_iam_user.default.name
  policy = data.aws_iam_policy_document.default.json
}

resource "aws_iam_access_key" "default" {
  user  = aws_iam_user.default.name
}
