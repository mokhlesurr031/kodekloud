 resource "time_static" "time_update" {
}


resource "local_file" "time"{
    filename = "/home/mahin/kodekloud/Terraform/Resource-Attribute-type-3/time.txt"
    content = "Time stamp of this file is ${time_static.time_update.id}"
}