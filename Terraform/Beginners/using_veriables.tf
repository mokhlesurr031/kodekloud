resource "local_file" "rand-pet1" {
  filename = var.filename
  content = var.content
}

resource "random_pet" "rand-pet2" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}

