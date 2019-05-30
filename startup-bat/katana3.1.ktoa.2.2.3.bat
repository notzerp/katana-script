::@ECHO OFF

rem Set the following env vars according to your licensing setup and
rem installation paths. Note the Maya/MtoA paths for the ArnoldXGen node to
rem run properly, and the Yeti bin directory is required for Yeti grooms to
rem work.  The Yeti bin directory should be added to the path as well.

rem set foundry_LICENSE=4101@your-license-server
set solidangle_LICENSE=5053@localhost
rem set "ARNOLD_PLUGIN_PATH=C:\path\to\Yeti\bin;C:\path\to\more\arnold\plugins;C:\more\shaders\etc"
rem set "MAYA_PATH=C:\Program Files\Autodesk\Maya2018"
rem set "MTOA_PATH=C:\solidangle\mtoadeploy\2018"
rem set "path=C:\path\to\Yeti\bin;%path%"


set "KATANA_HOME=D:\Katana3.1v2"
set "KTOA_HOME=D:\KtoA-2.2.3.0-kat3.1-windows"
set DEFAULT_RENDERER=arnold
set "KATANA_TAGLINE=With KtoA 2.2.3.0 and Arnold 5.2.2.1"
set "OCIO=C:\Users\prezt\Documents\maya\spi-anim-look\config.ocio"

set "path=%KTOA_HOME%\bin;%path%"
set "KATANA_RESOURCES=%KTOA_HOME%;%KATANA_HOME%\plugins\Resources"
"%KATANA_HOME%\bin\katanaBin.exe"
