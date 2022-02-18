set VERSION=2.0.0-dev
set NUPKG=artifacts\packages\Debug\Shipping\

pushd %~dp0
call cd ..
set SRC_DIR=%cd%

call taskkill /f /im dotnet.exe
call rd /Q /S artifacts

call build
call dotnet tool uninstall -g Microsoft.dotnet-msidentity
call cd %DEFAULT_NUPKG_PATH%
call C:
call rd /Q /S microsoft.dotnet.scaffolding.shared
call rd /Q /S microsoft.dotnet-msidentity
call rd /Q /S microsoft.visualstudio.web.codegeneration
call rd /Q /S microsoft.dotnet.scaffolding.shared
call rd /Q /S microsoft.visualstudio.web.codegeneration.core
call rd /Q /S microsoft.visualstudio.web.codegeneration.design
call rd /Q /S microsoft.visualstudio.web.codegeneration.entityframeworkcore
call rd /Q /S microsoft.visualstudio.web.codegeneration.templating
call rd /Q /S microsoft.visualstudio.web.codegeneration.utils
call rd /Q /S microsoft.visualstudio.web.codegenerators.mvc
call D:
call dotnet tool install -g Microsoft.dotnet-msidentity --add-source %SRC_DIR%\%NUPKG% --version %VERSION%
popd