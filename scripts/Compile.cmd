@REM First run "set_env.cmd" from GnuCOBOL's root folder
cobc -x -I src src/main.cbl -o bin/CobCash

@REM Note: Run from root folder of project, e.g. ./scripts/Compile.cmd
