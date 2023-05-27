variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
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
variable db_disk_image {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}
