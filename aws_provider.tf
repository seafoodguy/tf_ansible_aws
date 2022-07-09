provider "aws" {
  #profile = default
  profile = var.profile
  region  = var.region-master
  alias   = "region-master"
}
provider "aws" {
  #profile = default
  profile = var.profile
  region  = var.region-worker
  alias   = "region-worker"
}