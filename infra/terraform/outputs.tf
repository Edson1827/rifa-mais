output "db_endpoint" {
  value = aws_db_instance.postgres.endpoint
}
output "redis_address" {
  value = aws_elasticache_cluster.redis.cache_nodes[0].address
}
output "s3_bucket" {
  value = aws_s3_bucket.assets.id
}
