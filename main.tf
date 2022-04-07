module "createiamuser" {
  source = "./modules/iamuser"
  iamuser_username = var.username
}
module "createiamgroup" {
  source = "./modules/iamgroup"
  iamgroup_groupname = var.groupname
}
module "membership" {
  source = "./modules/groupmembership"
  groupmembership_groupname = module.createiamgroup.groupname
  groupmembership_usernames = [module.createiamuser.username]
}