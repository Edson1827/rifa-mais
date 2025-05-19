# Terraform AWS setup for RDS, ElastiCache, S3
provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  engine               = "postgres"
  instance_class       = "db.t3.micro"
  name                 = var.db_name
  username             = var.db_user
  password             = var.db_password
  skip_final_snapshot  = true
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "saas-rifas-redis"
  engine               = "redis"
  node_type            = "cache.t3.micro"
  num_cache_nodes      = 1
}

resource "aws_s3_bucket" "assets" {
  bucket = var.s3_bucket_name
}
