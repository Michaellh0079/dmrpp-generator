variable "aws_profile" {
  type    = string
  default = null
}


variable "region" {
  type    = string
  default = "us-west-2"
}


variable "prefix" {
  type = string
  description = "Cumulus stack prefix"
}

variable "desired_count" {
  default = 1
}
variable "cpu" {
  default = 800
}

variable "memory_reservation" {
  default = 900
}
variable "cluster_arn" {}
variable "log_destination_arn" {
  type        = string
  default     = null
  description = "A shared AWS:Log:Destination that receives logs in log_groups"
}
variable "docker_image" {
  default = "ghrcdaac/dmrpp-generator:latest"
}

variable "volumes" {
  description = "Volumes to make accessible to the container(s)"
  type    = list(object({ name = string, host_path = string, container_path = string }))
  default = []
}

