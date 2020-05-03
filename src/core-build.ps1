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
param ([string] $useSonar="Yes", [string] $projectDir, [string] $config, [string] $verbosity, [string] $runtime, [string] $logFolder)

if (Test-Path ./logs) {	Remove-Item ./logs -Recurse -Force }

if ($useSonar -eq "Yes") {
  dotnet tool install --global dotnet-sonarscanner
  dotnet sonarscanner begin /d:sonar.login=admin /d:sonar.password=admin /k:"WebApplication" 
}

$MyScript = 'dotnet build $projectDir /flp:v=$Verbosity /flp:logfile="$logFolder/build.log"'
Invoke-Expression -Command $MyScript

if ($useSonar -eq "Yes") {
  dotnet sonarscanner end /d:sonar.login=admin /d:sonar.password=admin
}