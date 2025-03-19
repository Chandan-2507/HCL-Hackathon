
module "eks_cluster_qa" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-app-qa"
  cluster_version = "1.24"
  vpc_id          = var.vpc_id_qa
  subnets         = var.subnets_qa
  node_groups = {
    qa-workers = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
module "eks_cluster_stg" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-app-stg"
  cluster_version = "1.24"
  vpc_id          = var.vpc_id_stg
  subnets         = var.subnets_stg
  node_groups = {
    stg-workers = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}

module "eks_cluster_prod" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-app-prod"
  cluster_version = "1.24"
  vpc_id          = var.vpc_id_prod
  subnets         = var.subnets_prod
  node_groups = {
    prod-workers = {
      desired_capacity = 3
      max_capacity     = 5
      min_capacity     = 2
      instance_type    = "t3.large"
    }
  }
}
