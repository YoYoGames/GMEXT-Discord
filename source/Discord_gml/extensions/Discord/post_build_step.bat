@echo off
setlocal enabledelayedexpansion

set Utils="%~dp0\scriptUtils.bat"

:: ######################################################################################
:: Macros

call %Utils% pathExtractDirectory "%~0" SCRIPT_PATH
call %Utils% pathExtractBase "%~0" EXTENSION_NAME

:: ######################################################################################
:: Script Logic

:: Version locks
set RUNTIME_VERSION_STABLE="!YYEXTOPT_%EXTENSION_NAME%_versionStable!"
set RUNTIME_VERSION_BETA="!YYEXTOPT_%EXTENSION_NAME%_versionBeta!"
set RUNTIME_VERSION_DEV="!YYEXTOPT_%EXTENSION_NAME%_versionDev!"

:: SDK version v1.55
set SDK_HASH_WIN="!YYEXTOPT_%EXTENSION_NAME%_sdkHashWin!"
set SDK_HASH_OSX="!YYEXTOPT_%EXTENSION_NAME%_sdkHashMac!"
set SDK_HASH_LINUX="!YYEXTOPT_%EXTENSION_NAME%_sdkHashLinux!"

set SDK_PATH=!YYEXTOPT_%EXTENSION_NAME%_sdkPath!
set SDK_VERSION=!YYEXTOPT_%EXTENSION_NAME%_sdkVersion!

:: Checks IDE and Runtime versions
call %Utils% checkMinVersion "%YYruntimeVersion%" %RUNTIME_VERSION_STABLE% %RUNTIME_VERSION_BETA% %RUNTIME_VERSION_DEV% runtime

:: Resolve the SDK path (must exist)
call %Utils% pathResolveExisting "%YYprojectDir%" "%SDK_PATH%" SDK_PATH

:: Ensure we are on the output path
pushd "%YYoutputFolder%"

:: Call setup method depending on the platform
:: NOTE: the setup method can be (:setupWindows, :setupMacOS or :setupLinux)
call :setup%YYPLATFORM_name%

popd

exit %ERRORLEVEL%

:: ----------------------------------------------------------------------------------------------------
:setupWindows

    set SDK_SOURCE="%SDK_PATH%\lib\x86_64\discord_game_sdk.dll"
    call %Utils% assertFileHash %SDK_SOURCE% %SDK_HASH_WIN% "%EXTENSION_NAME% SDK v%SDK_VERSION%"

    echo "Copying Windows (64 bit) dependencies"
    if not exist "discord_game_sdk.dll" call %Utils% fileCopyTo %SDK_SOURCE% "discord_game_sdk.dll"

exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupMacOS

    set SDK_SOURCE="%SDK_PATH%\lib\x86_64\discord_game_sdk.dylib"
    call %Utils% assertFileHash %SDK_SOURCE% %SDK_HASH_OSX% "%EXTENSION_NAME% SDK v%SDK_VERSION%"

    echo "Copying macOS (64 bit) dependencies"
    if "%YYTARGET_runtime%" == "VM" (
        :: This is used from VM compilation
        call %Utils% fileExtract "%YYprojectName%.zip" "_temp\"
        call %Utils% fileCopyTo %SDK_SOURCE% "_temp\assets\discord_game_sdk.dylib"
        call %Utils% folderCompress "_temp\*" "%YYprojectName%.zip"

        rmdir /s /q _temp

    ) else (

        :: This is used from YYC compilation
        call %Utils% fileCopyTo %SDK_SOURCE% "%YYprojectName: =_%\%YYprojectName: =_%\Supporting Files\discord_game_sdk.dylib"
    )

exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupLinux

    set SDK_SOURCE="%SDK_PATH%\lib\x86_64\libdiscord_game_sdk.so"
    call %Utils% assertFileHash %SDK_SOURCE% %SDK_HASH_LINUX% "%EXTENSION_NAME% SDK v%SDK_VERSION%"

    echo "Copying Linux (64 bit) dependencies"
    
    call %Utils% fileExtract "%YYprojectName%.zip" "_temp\"
    if not exist "assets\libdiscord_game_sdk.so" (
        call %Utils% fileCopyTo %SDK_SOURCE% "_temp\assets\libdiscord_game_sdk.so"
        call %Utils% folderCompress "_temp\*" "%YYprojectName%.zip"
    )

    rmdir /s /q _temp

exit /b 0
