# environments/dev/main.tf
module "vpc" {
  source = "../../modules/vpc"
  
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "eks" {
  source            = "../../modules/eks"
  cluster_name     = "dev-cluster"
  cluster_role_arn = var.cluster_role_arn
  node_role_arn    = var.node_role_arn
  subnet_ids       = module.vpc.private_subnets
}
