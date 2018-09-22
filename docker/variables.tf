variable "env" {
  description = "env: dev or prod"
}
variable "image" {
  description = "Image for container"
  type = "map"
}
variable "container_name" {
  description = "Name of container"
  type = "map"
}
variable "int_port" {
  description = "Internal port for container"
  type = "map"
}
variable "ext_port" {
  description = "External por for container"
  type = "map"
}
