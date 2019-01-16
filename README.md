# basicmakefile

A very basic Makefile for C project:

* debug and release mode
* dependency detection
* strict ANSI-C

## Usage

* copy the Makefile in the source directory
* if using Visual Studio Code, you can also copy `.vscode` folder
  * add a task to build the program
  * add a task to clean the directory
  * add a debug launch
* configure the Makefile if needed
* build the program

## Configure the Makefile

`DEBUG` can be set to `yes` to enable debug symbol generation, allowing the usage of a debugger.

`EXEC` contains the name of the executable file (`program.exe` by default).

`SRC` contains the list of source files (`*.c` by default).

`CFLAGS` and `LDFLAGS` respectively contains c compilation flags and link flags.

## Build the program

```shell
cd directory_containing_makefile
make
```

## Clean the directory

```shell
cd directory_containing_makefile
make clean
```