module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "ec2" {
  source       = "./modules/ec2"
  public_subnet_ids = module.vpc.public_subnet_ids
  instance_type = var.instance_type
  key_name      = var.key_name
}

module "rds" {
  source          = "./modules/rds"
  private_subnet_ids = module.vpc.private_subnet_ids
  db_name         = var.db_name
  db_username     = var.db_username
  db_password     = var.db_password
}

module "alb" {
  source          = "./modules/alb"
  public_subnet_ids = module.vpc.public_subnet_ids
  ec2_instance_ids = module.ec2.instance_ids
}

module "s3" {
  source = "./modules/s3"
}
