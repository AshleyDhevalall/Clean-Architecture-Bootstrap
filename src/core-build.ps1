<#
	.SYNOPSIS
		Builds .sln or .csproj files in current folder and subfolders.

	.DESCRIPTION
		Builds the source code for the project and outputs logs in Logs folder.
		SonarQube scanning can be toggled by setting the UseSonar parameter.
		
	.EXAMPLE
		Example of how to run the script.
#>   
[CmdletBinding()]
param()

if (Test-Path ./logs) {	Remove-Item ./logs -Recurse -Force }

dotnet tool install --global dotnet-sonarscanner
dotnet sonarscanner begin /d:sonar.login=admin /d:sonar.password=admin /k:"WebApplication" 

$MyScript = 'dotnet build ./SampleApi /flp:v=diag /flp:logfile="logs/build.log"'
Invoke-Expression -Command $MyScript

dotnet sonarscanner end /d:sonar.login=admin /d:sonar.password=admin