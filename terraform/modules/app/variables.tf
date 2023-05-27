variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "reddit_app_instance_count" {
  description = "Number of reddit app server"
  # Значение по умолчанию
  default = 1
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
