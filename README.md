# CobCash

A fixed-format COBOL app that imitates a transaction at a cashier till.

- Author: Ethan Kletschke
- Version: `0.1.2`
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

- GnuCOBOL’s implementation of the COBOL `SCREEN` section is somewhat finicky
  with user input.
  - The decimal points (`.`) in the numeric inputs are "glued" in place, and
    cannot be overwritten.
  - There is a chance that user input can overflow into different fields if the
    entered number is longer than the target field.
  - It is recommended to use the arrow keys to navigate to different fields.
  - Furthermore, if you press backspace in the numeric inputs, it'll remove 
    the placeholder characters (i.e. `0` and `.`) and make input even more 
    confusing.

## Planned Features

- [x] Using the `SCREEN` section for different sections of the program, i.e., input, 
  processing, and output.
- [ ] File handling to "print out a receipt".
- [ ] "Tables" (arrays) for items bought (`OCCURS`)
- [ ] 

## Running the App

To run the app, unzip the `.zip` that will be provided in the latest 
release of this repository, and run the `.exe`. 

GnuCOBOL is not a fully static compiler like GCC. It generates native executables,
but they depend on the GnuCOBOL runtime libraries (DLLs) to run — similar to how
Python or .NET applications require their runtime to be present.  
Because of this, GnuCOBOL DLLs are required when running the application on
Windows. The provided `.zip` should include all necessary DLLs. However, if the
program starts and reports missing DLLs, **please** open a GitHub issue and
include screenshots of the error messages — especially the names of any missing
DLLs — so they can be added.

You can build the application from source, but on Windows this is not recommended
unless you already have a working GnuCOBOL + MinGW setup. Configuring the toolchain
and collecting all required runtime DLLs can be difficult and error-prone.

For this reason, a pre-built GnuCOBOL distribution (such as
[Arnold Trembley's amazing binaries](https://www.arnoldtrembley.com/GnuCOBOL.htm)) 
was used to build the provided binaries,
and the release ZIP includes the DLLs needed to run the program on Windows.

If you do build from source and encounter missing DLL errors, please report them
via a GitHub issue so they can be documented or included in future releases.
