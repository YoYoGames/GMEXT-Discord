@echo off
set Utils="%~dp0scriptUtils.bat"
set "ExtensionPath=%~dp0"

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

:: Whether to bundle Discord's Krisp noise-cancellation library (off by default, see Krisp_Enable)
call %Utils% optionGetValue "Krisp_Enable" KRISP_ENABLE

:: Ensure we are on the output path
if "%YYTARGET_runtime%" == "GMRT" (
    pushd "%YYoutputFolder%\build\assets"
) else (
    pushd "%YYoutputFolder%"
)

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

    if /I "%KRISP_ENABLE%"=="True" (
        echo "Copying Krisp noise-cancellation dependencies"
        call %Utils% itemCopyTo "%SDK_PATH%\bin\release\discord_krisp.dll" "discord_krisp.dll"
        for %%K in (krisp-bvc-o-pro-v3.kef krisp-nc-o-lite-v1.kef krisp-nc-o-med-v7.kef krisp-nc-o-nb-v2.kef krisp-vad-o-v2.kef) do (
            call %Utils% itemCopyTo "%SDK_PATH%\bin\release\%%K" "%%K"
        )
    )
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

        if /I "%KRISP_ENABLE%"=="True" (
            echo "Copying Krisp noise-cancellation dependencies"
            call %Utils% itemCopyTo "%SDK_PATH%\lib\release\libdiscord_krisp.dylib" "!YYfixedProjectName!\!YYfixedProjectName!\Supporting Files\libdiscord_krisp.dylib"
            for %%K in (krisp-bvc-o-pro-v3.kef krisp-nc-o-lite-v1.kef krisp-nc-o-med-v7.kef krisp-nc-o-nb-v2.kef krisp-vad-o-v2.kef) do (
                call %Utils% itemCopyTo "%SDK_PATH%\lib\release\%%K" "!YYfixedProjectName!\!YYfixedProjectName!\Supporting Files\%%K"
            )
        )
        endlocal
    )
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupLinux
    :: NOTE: Krisp_Enable is not honored here - Discord does not vendor a Linux Krisp artifact
    :: (no discord_krisp.so ships alongside libdiscord_partner_sdk.so). Nothing to bundle even if the
    :: option is on; voice always falls back to WebRTC noise suppression on this platform.

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

    if /I "%KRISP_ENABLE%"=="True" (
        echo "Copying Krisp noise-cancellation (aar) dependencies"
        call %Utils% itemCopyTo "%SDK_PATH%\lib\release\discord_partner_sdk_krisp.aar" "%ExtensionPath%AndroidSource\libs-aar\discord_partner_sdk_krisp.aar"
    )
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupiOS
    :: Nothing to do here (handled in pre_build_step)
exit /b 0
