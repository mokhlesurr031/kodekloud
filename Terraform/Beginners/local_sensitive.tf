resource "local_sensitive_file" "pets" {
  filename = "/home/mahin/kodekloud/Terraform/Beginners/pets.txt"
  content = "We hate petsssssss!"
  directory_permission = "0777"
  file_permission = "0700"
}