# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
}

variable "server_ami" {
  description = "The AMI to use for EC2 instances in the ASG"
  type = string
  default = "ami-0fb653ca2d3203ac1"
}

variable "server_text" {
  description = "Text for the web server to display"
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "instance_type" {
  description = "The type of ec2 instances to launch"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "The minimum size of the ASG"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum size of the ASG"
  type        = number
  default     = 1
}

variable "custom_tags" {
  description = "Tags to be applied to instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling_schedule" {
  description = "Set to true to enable scheduled autoscaling"
  type = bool
  default = false
}