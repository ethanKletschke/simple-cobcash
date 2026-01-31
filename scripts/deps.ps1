# Gets the DLLs needed for the app to run on other machines
objdump -p .\bin\CobCash.exe |
Select-String "DLL Name" |
Select-String -NotMatch "KERNEL32|USER32|ADVAPI32|msvcrt"
