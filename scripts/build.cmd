@REM Command Prompt compile script

@REM First run "set_env.cmd" from GnuCOBOL's root folder

@REM Build in the distribution folder
cobc -x -I ../src ../src/main.cbl -o ../dist/CobCash -Wno-terminator

@REM Note: Run from the "scripts" folder
