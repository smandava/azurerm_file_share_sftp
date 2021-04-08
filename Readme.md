# azurerm_file_share_sftp

Minimal [Terraform](https://terraform.io) module to stand up a public sftp server on Azure. This module uses Azure [Files](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-introduction) and  [Container instance](https://azure.microsoft.com/en-us/services/container-instances/). 

### input parameters

* `location` 
    > azure region name.

    > Run `az account list-locations -o table` to see a list of locations.

* `prefix`
    > prefix to use for new resources created by this module

* `sftp_user_name`
    > sftp user name

* `sftp_folder` 
    > directory name to which upload and download files.

    > this directory is mounted on the ftp user's home directory.

    >azure file share is mounted on this folder. 
    
    >This is the only directory user can write to.   
* `sftp_password`

### outputs

* `fqdn` - FQDN of the sftp server 
* `ip_address` - IP address of the sftp server.

## Example

[examples](examples) folder a sample deployment that uses this module.

#### pre requeisites to run the example:

You would need your azure `subscription_id`, a service account (`client_id`, `client_secret` and `tenant_id`)

Check [terraform docs](https://www.terraform.io/docs/providers/azurerm/auth/service_principal_client_secret.html) for more information on how to setup the service account. 

#### Run the example

```Shell
$ cd examples
$ terraform init
$ terraform plan # to preview the changes.
$ terraform apply # to create the resources
```

#### Run the example

```Shell
$ terraform plan -destory # to preview the changes
$ terraform destory # to clean up the resources.

```


