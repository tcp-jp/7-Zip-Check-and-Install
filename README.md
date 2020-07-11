# 7-Zip Check and Install
Checks if 7-Zip is already installed and if not installs it. Used in scripts that require zipping but not sure if all machines have 7-Zip

# How Does It Work?
It first checks both 32 and 64 bit Program files which is the default install location for 7-Zip.
If it does not find anything matching '7-Zip' in the search it uses a powershell command to download the exe declared in the variable and installs it silently.
If it finds it/ once installed it sets the path to the location the 7-Zip folder is so that it can be used from the command line

# Usage
Either call from another batch file or copy into your batch file and use 'call :sevenzip'
