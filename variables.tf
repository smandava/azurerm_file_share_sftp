variable "prefix" {
  description = "prefix to use for all new resources created by this module"
}
variable "location" {
  description = "The Azure location where all resources in this example should be created"
}

variable "sftp_user_name" {
  description = "Username for the sFTP site"
}

variable "sftp_password" {
  description = "Password for the sFTP site"
}

variable "sftp_folder" {
  description = "SFTP folder name"
}


