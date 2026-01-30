@REM Command Prompt linting script
@REM First run "set_env.cmd" from GnuCOBOL's root folder

@REM Compile source code into object files
cobc -I src -Wall -Wextra -c src/*.cbl

@REM Delete object files
del /Q *.o

@REM Note: Run from root folder of project, e.g. ./scripts/Syntax.cmd
