::*********************************************************************
:: Copyright 2019 Nathan Voskamp. Subject to the MIT license.
::*********************************************************************

@echo off
set uwuserid=%1
if [%uwuserid%]==[] (
    echo Usage: %~nx0 ^<userid^>
) else (
    net use N: \\ecfile1.uwaterloo.ca\%uwuserid% * /user:nexus\%uwuserid% /PERSISTENT:NO
)
