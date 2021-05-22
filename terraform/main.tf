#Build docker image from app folder

resource "null_resource" "build" {
  provisioner "local-exec" {
    command = <<EOF
        docker build -t ${var.image_name} ../app/
    EOF
  }
}


resource "docker_image" "test" {
  depends_on = [
    null_resource.build
  ]
  name         = var.image_name
  keep_locally = true
}

resource "docker_container" "test" {
  name    = var.container_name
  image   = docker_image.test.latest
  restart = "always"

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  volumes {
    container_path = "/myapp"
    host_path = "${path.cwd}/app"
    read_only = false
  }
}

# Install VIM in the container
# This can be added in the Dockerfile as, but to demonstrate provisioning of container at run time, added below config

resource "null_resource" "provision" {
  depends_on = [
    docker_container.test
  ]
  provisioner "local-exec" {
    command = <<EOF
        docker exec -d ${var.container_name} bash -c "apt-get update && apt-get install vim -y"
    EOF
  }
}

