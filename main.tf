resource "aws_iam_role" "this" {
  name               = "${var.iam_role_name}"
  assume_role_policy = "${data.aws_iam_policy_document.this.json}"
}

data "aws_iam_policy_document" "this" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      identifiers = ["arn:aws:iam::${var.account_id}:root"]
      type        = "AWS"
    }
  }
}
