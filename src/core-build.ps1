function Build { 
    dotnet tool install --global dotnet-sonarscanner
    dotnet sonarscanner begin /d:sonar.login=admin /d:sonar.password=admin /k:"WebApplication" 
	dotnet build /flp:v=diag /flp:logfile="build/build.log"
    dotnet sonarscanner end /d:sonar.login=admin /d:sonar.password=admin
}

function Test {
  dotnet tool install --global coverlet.console
  dotnet test --logger "trx;LogFilePath=results.trx" --results-directory "./TestResults" --verbosity n /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura /p:Exclude="[xunit*]\*" /p:CoverletOutput="../TestResults/"
}