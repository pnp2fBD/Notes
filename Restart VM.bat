@echo off

REM rd /S /Q "C:\Documents and Settings\insurej.tester\Local Settings\Temporary Internet Files"
rd /S /Q "C:\Documents and Settings\insurej.tester\My Documents\clientCache"

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 (Deletes ALL History) 
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1 (Deletes History Only) 
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2 (Deletes Cookies Only) 
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 (Deletes Temporary Internet Files Only) 
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16 (Deletes Form Data Only) 
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32 (Deletes Password History Only) 

REM @ECHO OFF
SET SRC1=C:\Documents and Settings
SET SRC4=Local Settings\Temp
echo About to delete files from "Local settings\temp"
FOR /D %%X IN ("%SRC1%\*") DO FOR /D %%Y IN ("%%X\%SRC4%\*.*") DO RMDIR /S /Q "%%Y"
FOR /D %%X IN ("%SRC1%\*") DO FOR %%Y IN ("%%X\%SRC4%\*.*") DO DEL /F /S /Q "%%Y"

echo Deleting Files
echo File Deleted

shutdown -r -t 01