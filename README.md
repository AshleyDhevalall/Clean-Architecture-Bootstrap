# Clean Architecture Bootstrap
This project enables developers to bootstrap the project creation process by making use of the Clean Architecture Solution Template. The project includes tools that ensure that your project conform to the `Code Quality and Security` standards available in SonarQube.

### Prerequisites
* Clean Architecture with .NET Core
* Dotnet core sdk 3.1
* SonarQube server / Docker Desktop for MAC or Windows, if not running on Linux OS platform
* SonarQube docker image
* OWASP Zap docker image

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
* Sonar scanner

## TODO
* Use label for errors instead of message boxes
* Add icon
* Better error handling
* Option to toggle window exit
* Docker features

## Getting the Source

This project is hosted on [GitHub](https://github.com/AshleyDhevalall/Clean-Architecture-Bootstrap). You can clone this project directly using this command:
```
git clone https://github.com/AshleyDhevalall/Clean-Architecture-Bootstrap
```

## Authors

[Ashley Dhevalall](https://github.com/AshleyDhevalall)

## Acknowledgements

* [Clean Architecture with .NET Core: Getting Started](https://jasontaylor.dev/clean-architecture-getting-started/)
* [SonarQube](<http://nunit.org>)
* [Coverlet](<https://github.com/gurock/testrail-api>)

## License

MIT License

Copyright (c) 2019 AshleyDhevalall
