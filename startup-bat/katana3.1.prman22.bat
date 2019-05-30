rem RenderMan 22 Startup Script

set "KATANA_HOME=D:\Katana3.1v2"
set "PATH=%PATH%;%KATANA_HOME%\bin"

set "DEFAULT_RENDERER=prman"

set "RFKTREE=C:\Program Files\Pixar\RenderManForKatana-22.4-katana3.1\plugins"
set "RMANTREE=C:\Program Files\Pixar\RenderManProServer-22.4"

set "PATH=%PATH%;%RMANTREE%\lib;%RMANTREE%\bin"

set "KATANA_RESOURCES=%KATANA_RESOURCES%;%RFKTREE%\Resources\PRMan22;D:\Katana3.1v2\plugins\Resources"
"%KATANA_HOME%\bin\katanaBin.exe"
