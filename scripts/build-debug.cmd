@REM Command Prompt debug build script

@REM First run "set_env.cmd" from GnuCOBOL's root folder
cobc -I ../src -x ../src/main.cbl -o ../bin/DEBUG -fdebugging-line

@REM Note: Run from the "scripts" folder
