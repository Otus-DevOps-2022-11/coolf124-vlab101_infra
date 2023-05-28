terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraformbackend2"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gaborhl0ofcu46et1f/etnjh2efam44hi9pprit"
    dynamodb_table    = "state-lock-table"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
