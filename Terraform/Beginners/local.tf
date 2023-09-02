resource "local_file" "pet" {
  filename = "/home/mahin/kodekloud/Terraform/Beginners/pet.txt"
  content = "We hate petsss!"
  directory_permission = "0777"
  file_permission = "0700"
}  


resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "2"
}