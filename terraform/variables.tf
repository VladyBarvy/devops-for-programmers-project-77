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

variable "private_key_inkognito" {
  description = "Private key content"
  type        = string
  sensitive   = true
}

# SSH public key
variable "ssh_public_key" {
  description = "SSH public key for VM instances"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6/E+jxsM/P6Msvy0D5yn0S5MwJKHpSvCW5fkQTMwbSf7/6bpQjpYyVuVUB/DPXfnVS3xKaN57/goEjJvN/oGX9whBM7p3/7GbNfBxrgXhqjH4hSDumqBLCL1+Uj+wuDhY1Ty5cESs2mlxMPKFOi9cx0T//0zhOoTx4HAW8KY7jS5B3Jg8T98Y1njXWGLMfwCUCcVSJeHm5C3nUXxFoOi/BK9kNGavTdR8kDiHkElQ18Ic9G+atV69AOHglzJXFrLCVItZRFH/TQgHX5S4+jX0cNf7ypw8u4PYpqjD0UfYxgX8/ew/qL/Y2HxYln86QZyOH+kOcBSK6juhgofQiynmFiYMroFGl1s+VWx8nG+YHzwgi6MnPpqf5st5eZXKwkKpHTpVbVoY9Zl/0XtegInc15uBqLLpFr3vMW0vEwrsoQXeEDeP0QokX46BlZ/dRskQa67tMJg7+02cwE+fl+5d1td2W06gV+p5h9eH7QnbRdZ4AwL4sB5Sw7L5eFLcXmo3LeCmfO00xlCGZEdS1v9Rbh1Hc60v33wXd79DnEzDiwUfc4MmNPc2YvROLw8FlGmCpCM7kuOO7puiZFOEPsJtsC2LM8oP60Ekq+SFuXIQYuGqzgamWQmRhzNSp+O2oJ2tGHxDICtdC5NwuRGsWfBUH7ytCrHqOU2cxmfbi0pKVQ== barvv@vladybarvy"
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

variable "db_name" {
  description = "PostgreSQL database name"
  type        = string
  default     = "your_dbname"
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
  default     = "15"  
}
