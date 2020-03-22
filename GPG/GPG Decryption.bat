@ECHO OFF
color 1F
TITLE AUTO DECRYPTION

REM ************************************************************************************
REM                                                                                    * 
REM Script: Decryption.bat                                                             *
REM Author: uarikan                                                                    *
REM Update: March 12, 2018                                                             *
REM                                                                                    *
REM Description: This is a Windows shell script for decryption                         *
REM                                                                                    *
REM ************************************************************************************

REM DEFINE YOUR PASSWORD & PATH ********************************************************
SET password=xxxxxx
SET path=C:\XXX\ZZZ

PUSHD "%path%"
FOR /F "tokens=*" %%F IN ('DIR *.gpg /B') DO (
    gpg --output "%%~nF" --batch --yes --passphrase %password% --decrypt "%%~F")
POPD

REM *************************************************************************************
