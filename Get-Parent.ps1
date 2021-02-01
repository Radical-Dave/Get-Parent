<#PSScriptInfo

.VERSION 1.1

.GUID 5611f619-12cf-4a85-863a-1b09f337e397

.AUTHOR RadicalDave

.COMPANYNAME RadicalDave

.COPYRIGHT RadicalDave

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

#>
Param([parameter(position=0)] [int]$level = 1)
Write-Verbose "pwd:$pwd"
$path = Join-Path $pwd ("\.." * $level)
Write-Verbose "path:$path"
return [System.IO.Path]::GetFullPath($path)