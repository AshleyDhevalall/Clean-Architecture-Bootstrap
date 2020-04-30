# Dotnet powershell build script
This project aims to ensure that your project adheres to the `Code Quality and Security` standards available in SonarQube.

### Prerequisites
* Dotnet core sdk 3.1 
* SonarQube server / Docker Desktop for MAC or Windows, if not running on Linux OS platform

### Usage
* Download and copy the core-build.ps1 script to your solution folder
* Create a new file named build.ps1 in your solution folder
* The content of the folder should look like build.ps1

#### Test projects
* The script assumes that test projects end with *test

#### What actions does the core-script.ps1 script perform:
* The script will restores the packages
* Install sonar scanner as a global tool
* Install coverlet as a global tool
* Start sonar scanner
* Restore dependencies and build the solution
* Stop sonar scanner
* Run unit tests

### Generates the following html reports
* Code coverage
* Unit test
* sonar scanner

## Getting the Source

This project is hosted on [GitHub](https://github.com/AshleyDhevalall/Dotnet-QA-Build-Script). You can clone this project directly using this command:
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
