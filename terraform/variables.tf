variable "yc_iam_token" {
  description = "Yandex Cloud Private Token"
  type        = string
  sensitive   = true
}

variable "yc_cloud_id" {
  description = "Yandex Cloud cloud_id"
  type        = string
  sensitive   = true
}

variable "yc_folder_id" {
  description = "Yandex Cloud folder_id"
  type        = string
  sensitive   = true
}


variable "pvt_key" {
  description = "Path private key"
  type        = string
  sensitive   = true

}
variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  sensitive   = true
}

variable "access_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true
}

variable "organization_id" {
  type      = string
  sensitive = true
}

variable "project_id" {
  type      = string
  sensitive = true
}

variable "public_key" {
  type        = string
  description = "Public SSH key"
}

variable "user_data" {
  type = map(any)
  default = {
    "cloud-init" = <<-EOF
    #cloud-config
    apt-update: true
    apt-upgrade: true
    EOF
    "foo"        = "bar"
  }
}

variable "yc_postgresql_version" {
  description = "PostgreSQL version for Yandex Managed Database"
  type        = string
  default     = "15"  # Укажите версию по умолчанию, если требуется
}
