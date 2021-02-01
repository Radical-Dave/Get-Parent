Set-StrictMode -Version Latest
#####################################################
#  Get-Parent
#####################################################
<#
.SYNOPSIS
    Gets parent of current working directory
.DESCRIPTION
    Gets parent of current working directory and optional int level numbers of parents
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
function Get-Parent
{
    Param([Parameter(Position=0)] [int]$level = 1)
	return System.IO.Path]::GetFullPath(($pwd + "\.." * $level))
}