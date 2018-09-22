image = {
  dev = "ghost:latest"
  prod = "ghost:alpine"
}

container_name = {
  dev = "dev_blog"
  prod = "prod_blog"
}

int_port = {
  dev = "2368"
  prod = "2368"
}

ext_port = {
  dev = "8080"
  prod = "80"
}
