@echo off
set Utils="%~dp0scriptUtils.bat"
set ExtensionPath="%~dp0"

:: ######################################################################################
:: Script Logic

:: Always init the script
call %Utils% scriptInit

:: SDK Version (used in error messages)
call %Utils% optionGetValue "sdkVersion" SDK_VERSION

:: SDK Paths
call %Utils% optionGetValue "winSdkPath" WIN_SDK_PATH
call %Utils% optionGetValue "macosSdkPath" MACOS_SDK_PATH
call %Utils% optionGetValue "linuxSdkPath" LINUX_SDK_PATH
call %Utils% optionGetValue "androidSdkPath" ANDROID_SDK_PATH

:: Ensure we are on the output path
pushd "%YYoutputFolder%"

:: Call setup method depending on the platform
:: NOTE: the setup method can be (:setupWindows, :setupMacOS, :setupLinux, :setupAndroid, :setupiOS)
call :setup%YYPLATFORM_name%

popd

exit %ERRORLEVEL%

:: ----------------------------------------------------------------------------------------------------
:setupWindows
    :: Resolve the SDK path (must exist)
    call %Utils% pathResolveExisting "%YYprojectDir%" "%WIN_SDK_PATH%" SDK_PATH

    :: Get library file paths
    set SDK_SOURCE="%SDK_PATH%\bin\release\discord_partner_sdk.dll"

    echo "Copying Windows (64 bit) dependencies"
    call %Utils% itemCopyTo %SDK_SOURCE% "discord_partner_sdk.dll"
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupMacOS
    :: Resolve the SDK path (must exist)
    call %Utils% pathResolveExisting "%YYprojectDir%" "%MACOS_SDK_PATH%" SDK_PATH

    :: Get library file paths
    set SDK_SOURCE="%SDK_PATH%\lib\release\libdiscord_partner_sdk.dylib"

    echo "Copying macOS (64 bit) dependencies"

    if "%YYTARGET_runtime%" == "VM" (
        :: This is used for VM compilation
        call %Utils% logError "Extension is not compatible with the macOS VM export, please use YYC."
    ) else (
        setlocal enabledelayedexpansion

        :: When running from CI the 'YYprojectName' will not be set use 'YYprojectPath' instead.
        if "%YYprojectName%"=="" (
            for %%A in ("%YYprojectPath%") do set "YYprojectName=%%~nA"
        )
        :: Replace spaces with underscores (this matches the assetcompiler output)
        set YYfixedProjectName=!YYprojectName: =_!

        :: This is used for YYC compilation
        call %Utils% itemCopyTo %SDK_SOURCE% "!YYfixedProjectName!\!YYfixedProjectName!\Supporting Files\libdiscord_partner_sdk.dylib"
        endlocal
    )
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupLinux
    :: Resolve the SDK path (must exist)
    call %Utils% pathResolveExisting "%YYprojectDir%" "%LINUX_SDK_PATH%" SDK_PATH

    :: Get library file paths
    set SDK_SOURCE="%SDK_PATH%\lib\release\libdiscord_partner_sdk.so"

    echo "Copying Linux (64 bit) dependencies"

    setlocal enabledelayedexpansion

    :: When running from CLI 'YYprojectName' will not be set, use 'YYprojectPath' instead.
    if "%YYprojectName%"=="" (
        for %%A in ("%YYprojectPath%") do set "YYprojectName=%%~nA"
    )

    :: Update the zip file with the required SDKs
    mkdir _temp\assets
    call %Utils% itemCopyTo %SDK_SOURCE% "_temp\assets\libdiscord_partner_sdk.so"
    call %Utils% zipUpdate "_temp" "!YYprojectName!.zip"
    rmdir /s /q _temp

    endlocal
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupAndroid
    :: Resolve the SDK path (must exist)
    call %Utils% pathResolveExisting "%YYprojectDir%" "%ANDROID_SDK_PATH%" SDK_PATH

    :: Get library file paths
    set SDK_SOURCE="%SDK_PATH%\lib\release\discord_partner_sdk.aar"

    echo "Copying Android (aar) dependencies"

    :: Ensure the libs-aar folder exists in the extension source
    if not exist "%ExtensionPath%AndroidSource\libs-aar" mkdir "%ExtensionPath%AndroidSource\libs-aar"

    call %Utils% itemCopyTo %SDK_SOURCE% "%ExtensionPath%AndroidSource\libs-aar\discord_partner_sdk.aar"
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupiOS
    :: Nothing to do here (handled in pre_build_step)
exit /b 0
