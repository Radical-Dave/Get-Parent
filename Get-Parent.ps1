Set-StrictMode -Version Latest
#####################################################
#  Get-Parent
#####################################################
<#PSScriptInfo

.VERSION 1.0

.GUID 1e0480c8-acc6-43b3-8035-a4c3a9dbd329

.AUTHOR davidwalker

.COMPANYNAME

.COPYRIGHT

.TAGS

.LICENSEURI

.PROJECTURI

.ICONURI

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS
98
.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES


.PRIVATEDATA

#>
<#
.SYNOPSIS
    Gets parent of current working directory or # level up
.DESCRIPTION
    Gets parent of current working directory or optional int level numbers of parents
.PARAMETER level
    Specifies the path that should be reset to return to original working directory.
.EXAMPLE
    PS C:\> Get-Parent
.EXAMPLE
    PS C:\> Get-Parent 2
.EXAMPLE
    PS C:\> Get-Parent 3
.INPUTS
    System.String. You can pipe in the Value parameter.
.OUTPUTS
    None.
#> 
param([parameter(position=0)] [int]$level = 2)
$path = ("\.." * $level)
Write-Verbose "path:$path"
return System.IO.Path]::GetFullPath($path)