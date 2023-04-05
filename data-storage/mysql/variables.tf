# sensitive = true prevents value from being logged when running plan/apply
# use environment variables to set values...
# export TF_VAR_db_username=user
# export TF_VAR_db_password=password

variable "db_username" {
  description = "username for database"
  type = string
  sensitive = true                                  
}

variable "db_password" {
  description = "password for database"
  type = string
  sensitive = true
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "instance_class" {
  description = "The instance type to use for the RDS db server"
  type = string
  default = "db.t2.micro"
}