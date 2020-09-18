# Clean Architecture Bootstrap
The project enables developers to bootstrap the project creation process by making use of the Clean Architecture Solution Template by Jason Taylor. The project aims to build on the bootstrap process by providing powershell scripts for building, executing unit tests with code coverage reports and ensuring that your solution conforms to the `Code Quality and Security` standards available in SonarQube.

### Prerequisites
* .NET Core SDK (3.1 or later)
* Node.js (6 or later)
* Clean Architecture with .NET Core
* SonarQube server

### Usage
1. Check the .NET Core version by running this command:
```
dotnet --list-sdks
```

2. Check the node version by running this command:
```
node -v
```

3. Next, install the solution template using this command:
```
dotnet new --install Clean.Architecture.Solution.Template
```

4. Create a new solution
Creating a new solution is easy. Within an empty folder, run the following command:
```
dotnet new ca-sln
```
The following message will be displayed:

The template "Clean Architecture Solution" was created successfully.

This command will create a new solution, automatically namespaced using the name of the parent folder. For example, if the parent folder is named Northwind, then the solution will be named Northwind.sln, and the default namespace will be Northwind.

The solution is built using the Angular project template with ASP.NET Core. The ASP.NET Core project provides an API back end and the Angular CLI project provides the UI.

5. Download and copy the core-build.ps1 script to your solution folder
6. Create a new file named build.ps1 in your solution folder
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

## Getting the Source

This project is hosted on [GitHub](https://github.com/AshleyDhevalall/Clean-Architecture-Bootstrap). You can clone this project directly using this command:
```
git clone https://github.com/AshleyDhevalall/Clean-Architecture-Bootstrap
```

## Authors

[Ashley Dhevalall](https://github.com/AshleyDhevalall)

## Acknowledgements

* [Jason Taylor](https://jasontaylor.dev/clean-architecture-getting-started/)
* [SonarQube](<http://nunit.org>)
* [Coverlet](<https://github.com/gurock/testrail-api>)

## License

MIT License

Copyright (c) 2019 AshleyDhevalall
