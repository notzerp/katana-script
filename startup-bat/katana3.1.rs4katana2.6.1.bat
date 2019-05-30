rem Redshift for Katana script

set "KATANA_VERSION=2.6v1"
set "REDSHIFT4KATANA_VERSION=2.6v1"

set "KATANA_HOME=D:\Katana3.1v2"
set "REDSHIFT_HOME=C:\ProgramData\Redshift\bin"
set "REDSHIFT4KATANA_HOME=C:\ProgramData\Redshift\Plugins\Katana\%REDSHIFT4KATANA_VERSION%"

set DEFAULT_RENDERER=Redshift
set "KATANA_TAGLINE=With Redshift 2.6"

set REDSHIFT_CACHE_BUDGET=
set REDSHIFT_CACHE_FOLDER=
set REDSHIFT_SELECTED_CUDA_DEVICES=

set "path=%REDSHIFT_HOME%;%path%"
set "KATANA_RESOURCES=%REDSHIFT4KATANA_HOME%;%KATANA_HOME%\plugins\Resources"
"%KATANA_HOME%\bin\katanaBin.exe"
