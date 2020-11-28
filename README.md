# ghūl application template

This is a template for quick-starting a [ghūl language](https://ghul.io) application project and demonstrating language features:

- The target is a .NET console application that will run under Mono 6 and .NET 5
- The project is pre-configured for rich language support and build tasks in Visual Studio Code
- Continuous integration is supported via a basic build and test pipeline running on GitHub Actions
- The example code demonstrates various ghūl language constructs

## CI/CD status

 [![CI/CD](https://github.com/degory/ghul-application-template/workflows/CI/CD/badge.svg?branch=main)](https://github.com/degory/ghul-application-template/actions?query=workflow%3ACI%2FCD)

## Prerequisites

- Any one of:
  - GitHub [Codespaces](https://github.com/features/codespaces)
  - Windows 10 with [Docker Desktop](https://www.docker.com/products/docker-desktop) and the VSCode [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension 
  - Windows 10 with [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10), configured to run Linux with a recent version of [Mono](https://www.mono-project.com/), plus the VSCode [Remote - WSL](https://marketplace.visualstudio.com/items?,itemName=ms-vscode-remote.remote-wsl) extension  
  - Linux with Docker and the VSCode [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
  - Linux with a recent version of [Mono](https://www.mono-project.com/)
- Visual Studio Code
- An instance of this template in your own GitHub (click the [`Use this template`](https://github.com/degory/ghul-application-template/generate) button)

## Getting started with GitHub Codespaces

If you have access to GitHub [Codespaces](https://github.com/features/codespaces) then you can open your new application's repository into a Codespace container and develop directly in your browser.

## Getting started on Windows 10 with a development container

The easiest way to get up and running on Windows is via a development container. This template includes a `.devcontainer` folder, which will set up a local container with the dependencies needed to build .NET applications in ghūl.

### Development container prerequisites

VSCode development containers have a standard set of prerequisites that you need to install:
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- The [WSL2 back-end](https://docs.docker.com/docker-for-windows/wsl/) for Docker Desktop
- The Visual Studio Code [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

### Open your new application repository in a container

Once the prerequisites for development containers are working, clone your new application repository from GitHub into a new unique volume:
- Open a new Visual Studio Code window
- If you have no pre-existing development containers, you may be offered the option to `Clone Repository in Container Volume` - if so, choose this option.
- Otherwise, either:
    - Open the Remote Explorer from activity bar on the left
    - Click the `+` icon
    - Choose `Clone Repository in Container Volume` from the menu
- or
    - `Ctrl` + `P`
    - Type `>`
    - Start typing `Clone Repository in Container Volume`, and select that option when it appears
- Choose `+ Create a unique volume` when prompted

Visual Studio Code will create a container and a unique volume to hold your application source.

## Getting started with on Windows with WSL2 or on native Linux 

The ghūl compiler can be run on Linux or on WSL2 on Windows without a container, however ghūl is an experimental languguage and the compiler may be unstable: using the development container is the safer option. 

If you prefer to use native Linux or WSL2 rather than the development container, then the compiler should run on any recent Linux distribution provided that Mono version 6 is installed.

### Install the Mono development environment

Applications built with ghūl will happily run under both .NET and Mono, but the compiler itself must be run under Mono version 6

On Ubuntu or Debian, install the Mono development environment with:

```
$ apt-get install mono-devel
```


### Install the ghūl compiler

Download the latest version of the [ghūl compiler installer script](https://github.com/degory/ghul/releases/latest/download/ghul.run) and run it with Bash. For example:

```
$ curl -L https://github.com/degory/ghul-releases/releases/latest/download/ghul.run -o ghul.run
```

```
$ bash ./ghul.run
```

### Verify the compiler installation

If you run the ghūl compiler from a shell with no arguments, it should report a version number:

```
$ ghul
ghūl v0.2.56
```

### Opening in Visual Studio Code

When you open the source folder VSCode will ask if you want to reopen the project in a container. Decline this by clicking the "Don't Show Again" button to avoid being prompted every time to reopen the folder.

### Install the ghūl Visual Studio Code extension

Search for 'ghul' on the Visual Studio Code extensions marketplace. The extension's full name is 'ghūl language support' and the publisher is 'degory'

## Building your ghūl application

The default VSCode build task is auto-configured, so you can build the application with either:
- `Ctrl` + `Shift` + `B`, or
- `Ctrl` + `Shift` + `P`, choose `Run Task`, then choose the build task from the list

## Running your application

The build output is a simple .NET console application (`hello-world.exe`), which can be run:
- from the command line with Mono: `mono hello-world.exe`
- from the command line with .NET: `dotnet hello-world.exe` (provided you have the .NET 5 runtime installed - note, it's not pre-installed in the development container)
- via the pre-configured VSCode test task: `Ctrl` + `Shift` + `P`, choose `Run Task`, choose the run task from the list

## Customizing your application

- The sample application executable is named `hello-world.exe`. You can change this by editing `tasks.json` and `build/build.sh`
- Add additional `.ghul` source files to the `src/` folder
- If you delete or rename source files, restart VSCode or reload the folder (`Ctrl` + `Shift` + `P`, `Developer: Reload Window`) (see [ghūl issue 388](https://github.com/degory/ghul/issues/388))

## Nice to have

ghūl source code looks best in the [Fira Code](https://github.com/tonsky/FiraCode) font. Fira Code combined with the `ss07` ligatures setting in `settings.json` gives the preferred rendering of ghūl operators:

```
    "editor.fontLigatures": "'ss07'",
    "editor.fontFamily": "'Fira Code', Consolas, 'Courier New', monospace",
```


