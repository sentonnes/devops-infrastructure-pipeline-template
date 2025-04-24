param($TerraformFilesDirectory)

. $(Join-Path $PSScriptRoot "Cmdlets.ps1")

SetLocationAndOutputInformation -Directory $TerraformFilesDirectory
Terraform-Init
Terraform-Validate