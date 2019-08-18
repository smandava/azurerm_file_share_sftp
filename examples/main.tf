################################
# customize these variables to #
# to match your needs          #
################################

locals  {
  location = "eastus2"
  sftp_user_name = "sftpuser"
}

module "incoming" {
  source = "../"
  prefix = "iei-incoming-sftp"
  sftp_folder = "incoming"
  location = "${local.location}"
  sftp_user_name = "${local.sftp_user_name}"
  sftp_password = "${var.sftp_password}"
}

module "outgoing" {
  source = "../"
  prefix = "iei-outgoing-sftp"
  sftp_folder = "outgoing"
  location = "${local.location}"
  sftp_user_name = "${local.sftp_user_name}"
  sftp_password = "${var.sftp_password}"
}
