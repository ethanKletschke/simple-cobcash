# CobCash

A simple COBOL program imitating an EFT transaction.

- Author: Ethan Kletschke
- Version: `0.0.4`
- Developed and Tested On: Windows 11
- Targeted Platform: Windows
- License: MIT
- Project Metadata File: [`project.yaml`](./meta/project.yaml)

---

- [CobCash](#cobcash)
  - [Disclaimers](#disclaimers)
    - [About This Project](#about-this-project)
    - [Known Limitations and Bugs](#known-limitations-and-bugs)
  - [Planned Features](#planned-features)
  - [Running the App](#running-the-app)

---

## Disclaimers

### About This Project

- This program does no real processing as of yet. It merely displays the input
  "Screen" (terminal UI) for user input, a mockup processing screen, 
  and a debug screen that shows variable values.
- All COBOL source code intentionally follows _**fixed format**_, as this is 
  what I prefer and am used to using for COBOL programming. Future projects
  will utilise free format.
- The `meta` folder contains project metadata files that are not used for 
  running the app.

### Known Limitations and Bugs

- COBOL's `SCREEN` section, which is heavily utilised in this app, is a bit
  finicky with user input.
  - The decimal points (`.`) in the numeric inputs are "glued" in place, and
    cannot be overwritten.
  - There is a chance that user input can overflow into different fields. For 
    example
  - It is recommended to use the arrow keys to navigate to different fields.
  - Furthermore, if you press backspace in the numeric inputs, it'll remove 
    the placeholder characters (i.e. `0` and `.`) and make input even more 
    confusing.

## Planned Features

- Using the `SCREEN` section for different sections of the program, i.e., input, 
  processing, and output.
- File handling to "print out a receipt".

## Running the App

To run the app, unzip the `.zip` that is provided in the latest release of this
repository, and run the `.exe`. 

To build from source (not recommended),
download [GnuCOBOL](https://gnucobol.sourceforge.io/) 
or one of its [pre-built binaries](https://www.arnoldtrembley.com/GnuCOBOL.htm),
then follow the steps below:

1. Go to the root folder of GnuCOBOL (say, `C:\GnuCOBOL`)
2. Open a terminal in that folder
3. Run the `set_env.cmd` batch file via the terminal
4. Go to the cloned repo's root folder
5. Compile with the following commands:

```cmd
mkdir ./bin
cobc -x -I ./src ./src/main.cbl -o ./bin/CobCash
```

6. Run the `.exe` generated in the `bin` folder.
