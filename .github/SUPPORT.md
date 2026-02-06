# CobCash – Support

This document explains what kind of support is available for CobCash, how to report issues, and what limitations you should be aware of when using the program.

---

- [CobCash – Support](#cobcash--support)
  - [Terminal Screen and User Input Issues](#terminal-screen-and-user-input-issues)
  - [Missing DLLs (Windows)](#missing-dlls-windows)
  - [General Bugs and Unexpected Behaviour](#general-bugs-and-unexpected-behaviour)
  - [Final Notes](#final-notes)

---

## Terminal Screen and User Input Issues

CobCash makes use of GnuCOBOL’s SCREEN section to provide a more interactive 
terminal interface. Unfortunately, GnuCOBOL’s implementation of this part of the
COBOL standard can be quirky and inconsistent, depending on:

- Your terminal emulator
- Your operating system
- The specific GnuCOBOL version you are using

Some visual glitches, input oddities, or screen refresh issues are therefore 
outside the control of this project and cannot be fixed in CobCash itself.

If you encounter a screen-related issue:

- Check the project README for known limitations.
- Ensure you are using a recent version of GnuCOBOL.

Feel free to open an issue if you are unsure whether the behaviour is a compiler
limitation or a genuine bug.

## Missing DLLs (Windows)

If the program fails to start due to missing DLLs on Windows: 
Open a GitHub issue that includes:

- The exact error message
- Your Windows version
- Where you downloaded the release from

Any confirmed missing DLLs will be bundled into a future release as soon as possible.

## General Bugs and Unexpected Behaviour

If you believe you have found a bug that is not related to terminal rendering or
compiler limitations, please report it via a GitHub issue.

When reporting a bug, try to include:

- What you expected to happen
- What actually happened
- Steps to reproduce the issue
- Your OS and GnuCOBOL version (if relevant)

Clear reports make it much easier to investigate and fix problems.

## Final Notes

CobCash is a learning-focused project built with GnuCOBOL, and some rough edges
are unavoidable. Bug reports, feedback, and suggestions are always welcome and 
appreciated.

Thanks for using CobCash!
