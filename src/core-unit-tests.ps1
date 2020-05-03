<#
	.SYNOPSIS
		A brief description of the function or script.

	.DESCRIPTION
		A longer description.

	.PARAMETER FirstParameter
		Description of each of the parameters.
		Note:
		To make it easier to keep the comments synchronized with changes to the parameters,
		the preferred location for parameter documentation comments is not here,
		but within the param block, directly above each parameter.

	.PARAMETER SecondParameter
		Description of each of the parameters.

	.INPUTS
		Description of objects that can be piped to the script.

	.OUTPUTS
		Description of objects that are output by the script.

	.EXAMPLE
		Example of how to run the script.

	.LINK
		Links to further documentation.

	.NOTES
		Detail on what the script does, if this is needed.
#>
[CmdletBinding()]
param([string] $testFolder, [string] $format, [string] $build, [string] $pjName)

dotnet tool install --global coverlet.console
dotnet tool install --global dotnet-reportgenerator-globaltool

# create the testresults folder
$TestResultFolder = (Get-Location).Path + '\$testFolder\'
New-Item -Path $TestResultFolder -ItemType Directory -Force

$ReportFolder = (Get-Location).Path + '\Report'

$MyScript = "dotnet test ./$pjName /p:CollectCoverage=true /p:CoverletOutputFormat=$format /p:CoverletOutput=$TestResultFolder"
Invoke-Expression -Command $MyScript

ReportGenerator "-reports:C:\Projects\sample\TestResults\coverage.cobertura.xml" "-targetdir:$ReportFolder"