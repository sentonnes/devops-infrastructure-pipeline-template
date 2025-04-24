param($TerraformFilesDirectory)
Set-Location -Path $TerraformFilesDirectory
Get-ChildItem
terraform init -backend=false
terraform validate