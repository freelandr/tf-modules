output "endpoint_address" {
  value = aws_db_instance.example.address
  description = "connect to the database at this endpoint"
}

output "port" {
  value = aws_db_instance.example.port
  description = "connect to the database on this port"
}