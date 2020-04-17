dotnet build
dotnet test --logger "trx;LogFilePath=results.trx" /p:CollectCoverage=true
dotnet pack --no-build --no-restore .\WebApplication\WebApplication.csproj -o bin\Publish\Nuget\
