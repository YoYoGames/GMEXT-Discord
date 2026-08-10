@echo off
set Utils="%~dp0scriptUtils.bat"
set "EXTENSION_DIR=%~dp0"

:: ######################################################################################
:: Script Logic

:: Always init the script
call %Utils% scriptInit

:: SDK Version (used in error messages)
call %Utils% optionGetValue "sdkVersion" SDK_VERSION

:: SDK Paths
call %Utils% optionGetValue "iosSdkPath" IOS_SDK_PATH

:: Ensure we are on the output path
pushd "%YYoutputFolder%"

:: Call setup method depending on the platform
:: NOTE: the setup method can be (:setupWindows, :setupMacOS, :setupLinux, :setupAndroid, :setupiOS)
call :setup%YYPLATFORM_name%

popd

exit %ERRORLEVEL%

:: ----------------------------------------------------------------------------------------------------
:setupWindows
    :: Nothing to do here
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupMacOS
    :: Nothing to do here
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupLinux
    :: Nothing to do here
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupAndroid
    :: Nothing to do here
exit /b 0

:: ----------------------------------------------------------------------------------------------------
:setupiOS
    :: Resolve the SDK path (must exist)
    call %Utils% pathResolveExisting "%YYprojectDir%" "%IOS_SDK_PATH%" SDK_PATH

    :: Source xcframework
    set "XCFRAMEWORK_SRC=%SDK_PATH%\lib\release\discord_partner_sdk.xcframework"
    if not exist "%XCFRAMEWORK_SRC%" (
        call %Utils% logError "discord_partner_sdk.xcframework not found at '%XCFRAMEWORK_SRC%'."
    )

    set "IOS_DEST_DIR=%EXTENSION_DIR%iOSSourceFromMac"
    set "IOS_ZIP=%IOS_DEST_DIR%\discord_partner_sdk.zip"
    set "IOS_TEMP=%IOS_DEST_DIR%\_xcf_temp"

    echo "Building iOS xcframework zip"

    :: Wipe any previous staging folder/zip so we don't accumulate stale entries
    call %Utils% itemDelete "%IOS_TEMP%"
    call %Utils% itemDelete "%IOS_ZIP%"

    :: Stage the xcframework under a temp folder, then compress to the expected zip layout
    if not exist "%IOS_DEST_DIR%" mkdir "%IOS_DEST_DIR%"
    mkdir "%IOS_TEMP%"
    call %Utils% itemCopyTo "%XCFRAMEWORK_SRC%" "%IOS_TEMP%\discord_partner_sdk.xcframework"
    call %Utils% folderCompress "%IOS_TEMP%" "%IOS_ZIP%"
    call %Utils% itemDelete "%IOS_TEMP%"

    :: Krisp noise-cancellation framework - always bundled on iOS (declared statically in
    :: iosThirdPartyFrameworkEntries; unlike Android/Windows/macOS, GameMaker's Xcode framework-embed
    :: list can't be gated by an extension option, so Krisp_Enable does not apply here)
    set "KRISP_XCFRAMEWORK_SRC=%SDK_PATH%\lib\release\discord_partner_sdk_krisp.xcframework"
    if not exist "%KRISP_XCFRAMEWORK_SRC%" (
        call %Utils% logError "discord_partner_sdk_krisp.xcframework not found at '%KRISP_XCFRAMEWORK_SRC%'."
    )

    set "KRISP_ZIP=%IOS_DEST_DIR%\discord_partner_sdk_krisp.zip"
    set "KRISP_TEMP=%IOS_DEST_DIR%\_xcf_krisp_temp"

    echo "Building iOS Krisp xcframework zip"

    call %Utils% itemDelete "%KRISP_TEMP%"
    call %Utils% itemDelete "%KRISP_ZIP%"

    mkdir "%KRISP_TEMP%"
    call %Utils% itemCopyTo "%KRISP_XCFRAMEWORK_SRC%" "%KRISP_TEMP%\discord_partner_sdk_krisp.xcframework"
    call %Utils% folderCompress "%KRISP_TEMP%" "%KRISP_ZIP%"
    call %Utils% itemDelete "%KRISP_TEMP%"
exit /b 0
