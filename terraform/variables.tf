variable "image_name" {
  description = "Image for container"
  default     = "hello_big_pay:1.0"
}

variable "container_name" {
  description = "Container name"
  default = "test-app"
}

variable "internal_port" {
  type        = number
  description = "Internal port of the container"
  default     = 8080
}

variable "external_port" {
  type        = number
  description = "The external port on which application is running"
  default     = 8080
}


