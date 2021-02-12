<#PSScriptInfo

.VERSION 1.2

.GUID 5611f619-12cf-4a85-863a-1b09f337e397

.AUTHOR David Walker, Sitecore Dave, Radical Dave

.COMPANYNAME David Walker, Sitecore Dave, Radical Dave

.COPYRIGHT David Walker, Sitecore Dave, Radical Dave

.TAGS powershell file io

.LICENSEURI https://github.com/Radical-Dave/Get-Parent/blob/main/LICENSE

.PROJECTURI https://github.com/Radical-Dave/Get-Parent

.ICONURI

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES


#>

<#

.DESCRIPTION
Gets parent of current working directory or optional int level up

.PARAMETER level
Number of levels (aka parent, folder, generations, etc) [default = 1 (Parent)]

.EXAMPLE
PS> .\Get-Parent

.EXAMPLE
PS> .\Get-Parent 2

.EXAMPLE
PS> .\Get-Parent 0

#>
Param(
    # Number of levels (aka parent, folder, generations, etc) [default = 1 (Parent)]
    [Parameter(Mandatory = $false, Position=0)] [int]$level = 1
)
$ErrorActionPreference = 'Continue'
Write-Verbose "pwd:$pwd"
$path = Join-Path $pwd ("\.." * $level)
Write-Verbose "path:$path"
return [System.IO.Path]::GetFullPath($path)