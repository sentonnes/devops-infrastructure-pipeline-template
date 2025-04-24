param($TerraformFilesDirectory)
Set-Location -Path $TerraformFilesDirectory
Write-Host $(Get-Content)
terraform init -backend=false
terraform validate