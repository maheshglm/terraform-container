terraform {

  required_version = ">= 0.15"

  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
   
  }

}
provider "docker" {}
