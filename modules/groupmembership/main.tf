resource "aws_iam_group_membership" "groupmembership_assign" {
  group = var.groupmembership_groupname
  name = "membership"
  users = var.groupmembership_usernames
}