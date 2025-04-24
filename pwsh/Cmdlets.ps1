function SetLocationAndOutputInformation {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string] $Directory
    )
    Set-Location $Directory
    Write-Host "Current Directory: $( Get-Location )"

    Write-Host "Directory Content:"
    Get-ChildItem -File | ForEach-Object { Write-Host $_ }

    Write-Host "Terraform Version:"
    terraform --version
}

function Terraform-Validate {
    $activity = "terraform validation command execution"
    Write-Output "Starting $activity"

    terraform validate

    ThrowErrorIfCommandHadError -Activity $activity
    Write-Output "Finished $activity"
}

function Terraform-Init {
    [CmdletBinding()]

    $activity = "terraform init command execution"
    Write-Output "Starting $activity"

    terraform init -backend=false

    ThrowErrorIfCommandHadError -Activity $activity
    Write-Output "Finished $activity"
}
