# Dotnet build script
This project aims to ensure that your project meets the `Code Quality and Security` standards available in SonarQube.

### Prerequisites
* Dotnet core sdk 3.1 
* SonarQube server
* C# solution

### Usage
* Download and copy the core-build.ps1 script to your solution folder.

## Getting the Source

This project is hosted on [GitHub](https://github.com/AshleyDhevalall/Dotnet-QA-Build-Script). You can clone this project directly using this command:https://github.com/AshleyDhevalall/Dotnet-QA-Build-Script
```
git clone https://github.com/AshleyDhevalall/Dotnet-QA-Build-Script.git
```

## Authors

[Ashley Dhevalall](https://github.com/AshleyDhevalall)

## Acknowledgements

* [SonarQube](<http://nunit.org>)
* [Coverlet](<https://github.com/gurock/testrail-api>)

## License

MIT License

Copyright (c) 2019 AshleyDhevalall


How is this accomplished?
We will make use of dotnet install command to install the dependencies required.

All tools are open source.

Dotnet Build Scripts with build-in quality and security scanning.

This project aims to ensure that your project meets the minimum required standard for developing NET Core application.

How to use

Copy the core-build.ps file to your root folder.

Open powershell and execute the folder commands

What happens

We use 

install the net global tools

scan sonar scanner to scan our project as it builds.

the project will be automatically created in sonarqube server.

if any steps fails, the script aborts

the build logs are stored in the logs folder.


dotnet to build the solution, which explicity performs a restore

stop sonar scanner

run unit tests

the testresults folder contains the code coverage and unit test results, if you have included any unit tests.

what benefit do we get from using these tools

what do they do

how do we see the results

what is the minimum standard i should be aiming for





We will be using the Clean Architecture solution by Jason Taylor in our sample.

OWASP SonarQube Project Build Status
The OWASP SonarQube project aims to provide open source SAST using the existing open source solutions. SonarQube is one of the world’s most popular continuous code quality tools and it's actively used by many developers and companies.

More details: https://www.owasp.org/index.php/OWASP_SonarQube_Project GitHub: https://github.com/owasp/sonarqube

How to use:
docker pull owasp/sonarqube
docker run -d -p 9000:9000 -p 9092:9092 owasp/sonarqube
Open your favorite browser, navigate to http://localhost:9000


PREREQUISITES
DOCKER DESKTOP FOR WINDOWS
SONARQUBE DOCKER CONTAINER IS PRE-INSTALLED


