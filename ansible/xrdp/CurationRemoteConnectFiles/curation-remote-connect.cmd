::the first port must match the one in Default.rdp. The second port must
::match the one set in /etc/xrdp/xrdp.ini on the server
::ssh.exe can be downloaded from https://github.com/PowerShell/Win32-OpenSSH
start /D %~dp0 ssh -L 33389:localhost:3389 <user>@<host>
ping localhost -n 4 > NUL
start /D %~dp0 Default.rdp

