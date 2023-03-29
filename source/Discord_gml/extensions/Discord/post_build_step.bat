@echo off
set Utils="%~dp0scriptUtils.bat"

:: ######################################################################################
:: Script Logic

:: Always init the script
call %Utils% scriptInit

:: Version locks
call %Utils% optionGetValue "versionStable" RUNTIME_VERSION_STABLE
call %Utils% optionGetValue "versionBeta" RUNTIME_VERSION_BETA
call %Utils% optionGetValue "versionDev" RUNTIME_VERSION_DEV
call %Utils% optionGetValue "versionLTS" RUNTIME_VERSION_LTS

:: SDK Hash
call %Utils% optionGetValue "sdkHashWin" SDK_HASH_WIN
call %Utils% optionGetValue "sdkHashMac" SDK_HASH_OSX
call %Utils% optionGetValue "sdkHashLinux" SDK_HASH_LINUX

:: SDK Path
call %Utils% optionGetValue "sdkPath" SDK_PATH
call %Utils% optionGetValue "sdkVersion" SDK_VERSION

:: Error String
set ERROR_SDK_HASH="Invalid Discord SDK version, sha256 hash mismatch (expected v%SDK_VERSION%)."

:: Checks IDE and Runtime versions
call %Utils% versionLockCheck "%YYruntimeVersion%" %RUNTIME_VERSION_STABLE% %RUNTIME_VERSION_BETA% %RUNTIME_VERSION_DEV% %RUNTIME_VERSION_LTS%

:: Resolve the SDK path (must exist)
call %Utils% pathResolveExisting "%YYprojectDir%" "%SDK_PATH%" SDK_PATH

:: Ensure we are on the output path
pushd "%YYoutputFolder%"

:: Call setup method depending on the platform
:: NOTE: the setup method can be (:setupWindows, :setupMacOS or :setupLinux)
call :setup%YYPLATFORM_name%

popd

exit %errorlevel%

:: ----------------------------------------------------------------------------------------------------
:setupWindows

    set SDK_SOURCE="%SDK_PATH%\lib\x86_64\discord_game_sdk.dll"
    call %Utils% assertFileHashEquals %SDK_SOURCE% %SDK_HASH_WIN% %ERROR_SDK_HASH%

    echo "Copying Windows (64 bit) dependencies"
    if not exist "discord_game_sdk.dll" call %Utils% itemCopyTo %SDK_SOURCE% "discord_game_sdk.dll"

exit /b %errorlevel%

:: ----------------------------------------------------------------------------------------------------
:setupMacOS

    set SDK_SOURCE_x64="%SDK_PATH%\lib\x86_64\discord_game_sdk.dylib"
    set SDK_SOURCE_ARM64="%SDK_PATH%\lib\aarch64\discord_game_sdk.dylib"
    call %Utils% assertFileHashEquals %SDK_SOURCE_x64% %SDK_HASH_OSX% %ERROR_SDK_HASH%

    echo "Copying macOS (64 bit) dependencies"

    if "%YYTARGET_runtime%" == "VM" (
        :: This is used from VM compilation
        call %Utils% logError "Extension is not compatible with the macOS VM export, please use YYC."
    ) else (
        :: This is used from YYC compilation (copy both single arch binaries, they will be processed in 'remote_built_step')
        call %Utils% itemCopyTo %SDK_SOURCE_x64% "%YYprojectName: =_%\%YYprojectName: =_%\Supporting Files\discord_game_sdk_x64.dylib"
        call %Utils% itemCopyTo %SDK_SOURCE_ARM64% "%YYprojectName: =_%\%YYprojectName: =_%\Supporting Files\discord_game_sdk_arm64.dylib"
    )

exit /b %errorlevel%

:: ----------------------------------------------------------------------------------------------------
:setupLinux

    set SDK_SOURCE="%SDK_PATH%\lib\x86_64\libdiscord_game_sdk.so"
    call %Utils% assertFileHashEquals %SDK_SOURCE% %SDK_HASH_LINUX% %ERROR_SDK_HASH%

    echo "Copying Linux (64 bit) dependencies"
    call %Utils% fileExtract "%YYprojectName%.zip" "_temp\"
    if not exist "assets\libdiscord_game_sdk.so" (
        call %Utils% itemCopyTo %SDK_SOURCE% "_temp\assets\libdiscord_game_sdk.so"
        call %Utils% folderCompress "_temp" "%YYprojectName%.zip"
    )
    rmdir /s /q _temp

exit /b %errorlevel%
