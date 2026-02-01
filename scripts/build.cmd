@REM Command Prompt compile script

@REM First run "set_env.cmd" from GnuCOBOL's root folder
cobc -x -I ../src ../src/main.cbl -o ../bin/CobCash -Wno-terminator

@REM Note: Run from the "scripts" folder
