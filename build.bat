@echo off
if exist trpad.exe del trpad.exe
nasm -f win64 trpad.asm -o trpad.obj
crinkler /SUBSYSTEM:WINDOWS /ENTRY:EntryPoint /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" /LIBPATH:"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Tools\MSVC\14.39.33519\lib\x64" user32.lib gdi32.lib comctl32.lib comdlg32.lib kernel32.lib trpad.obj /OUT:trpad.exe
del trpad.obj
