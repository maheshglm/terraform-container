docker container provisioning with terraform
---

A simple containerized node js application demonstrating how to use Docker service with terraform.

instructions
---

1. Install Terraform
2. Clone the repo into local folder
3. `cd` into `challenge1\terraform`
4. Run `terraform init`
5. Run `terraform apply -auto-approve`
6. Run `docker ps` to verify `test-app` container is running on `8080` port
7. Run `curl localhost:8080` which will give output `Hello BigPayMe.com!!, Its me`
8. To clean up and delete all resources after you're done, run `terraform destroy -auto-approve`