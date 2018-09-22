output "image_output" {
  value = "${docker_image.image_id.latest}"
}
