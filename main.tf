variable "name" {
  type    = string
  default = "Subject Name Here"
}

variable "hometown" {
  type    = string
  default = "Subject Hometown Here"
}

locals {
  greeting = "Unbelievable! You, ${var.name}, must be the pride of ${var.hometown}."
}

output "greeting" {
  value = local.greeting
}

resource "null_resource" "result" {
  triggers = {
    greeting = local.greeting
  }
}
