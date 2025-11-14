# Module calls
module "vpc" {
  source = "./vpc"
  
  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
}

module "s3" {
  source = "./s3"
  
  project_name = var.project_name
  environment  = var.environment
  bucket_name  = var.bucket_name
}

module "ec2" {
  source = "./ec2"
  
  project_name     = var.project_name
  environment      = var.environment
  vpc_id          = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  key_name        = var.key_name
  instance_type   = var.instance_type
}

module "loadbalancer" {
  source = "./loadbalancer"
  
  project_name     = var.project_name
  environment      = var.environment
  vpc_id          = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  ec2_instance_ids = module.ec2.ec2_instance_ids
}
