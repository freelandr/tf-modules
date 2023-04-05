resource "aws_db_instance" "example" {
  identifier_prefix = "${var.cluster_name}-terraform-up-and-running"
  engine = "mysql"
  allocated_storage = 10
  instance_class = var.instance_class
  skip_final_snapshot = true
  db_name = "${var.cluster_name}_example_db"

  username = var.db_username
  password = var.db_password
}