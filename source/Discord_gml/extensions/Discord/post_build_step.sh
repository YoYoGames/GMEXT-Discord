#!/bin/bash

export SCRIPT_PATH=$0
source "$(dirname "$SCRIPT_PATH")/scriptUtils.sh"

# ######################################################################################
# Macros

# Version locks
getExtOpt "versionStable" RUNTIME_VERSION_STABLE
getExtOpt "versionBeta" RUNTIME_VERSION_BETA
getExtOpt "versionDev" RUNTIME_VERSION_RED

# SDK hash
getExtOpt "sdkHashLinux" SDK_HASH_LINUX
getExtOpt "sdkHashMac" SDK_HASH_OSX

# SDK data
getExtOpt "sdkVersion" SDK_VERSION
getExtOpt "sdkPath" SDK_PATH

# ######################################################################################
# Script Functions

setupmacOS() {

    SDK_SOURCE_X64="$SDK_PATH/lib/x86_64/discord_game_sdk.dylib"
    SDK_SOURCE_ARM64="$SDK_PATH/lib/aarch64/discord_game_sdk.dylib"

    assertFileHash $SDK_SOURCE_X64 $SDK_HASH_OSX "$EXTENSION_NAME SDK (v$SDK_VERSION)"

    echo "Copying macOS (64 bit) dependencies"
    if [[ "$YYTARGET_runtime" == "VM" ]]; then
        lipo "$SDK_SOURCE_X64" "$SDK_SOURCE_ARM64" -output "discord_game_sdk.dylib" -create
    else
        lipo "$SDK_SOURCE_X64" "$SDK_SOURCE_ARM64" -output "${YYprojectName}/${YYprojectName}/Supporting Files/discord_game_sdk.dylib" -create
    fi
}

setupLinux() {

    SDK_SOURCE="$SDK_PATH/lib/x86_64/libdiscord_game_sdk.so"
    assertFileHash $SDK_SOURCE $SDK_HASH_LINUX "$EXTENSION_NAME SDK (v$SDK_VERSION)"

    echo "Copying Linux (64 bit) dependencies"
    
    fileExtract "${YYprojectName}.zip" "_temp"
    [[ ! -f "_temp/assets/libdiscord_game_sdk.so" ]] && fileCopyTo $SDK_SOURCE "_temp/assets/libdiscord_game_sdk.so"
	
    folderCompress "_temp" "${YYprojectName}.zip"
    rm -r _temp
}

# ######################################################################################
# Script Logic

# Checks IDE and Runtime versions
checkMinVersion "$YYruntimeVersion" $RUNTIME_VERSION_STABLE $RUNTIME_VERSION_BETA $RUNTIME_VERSION_RED runtime

# Resolve the SDK path (must exist)
pathResolveExisting "$YYprojectDir" $SDK_PATH SDK_PATH

# Ensure we are on the output path
pushd "$YYoutputFolder" >/dev/null

# Call setup method depending on the platform
# NOTE: the setup method can be (:setupmacOS or :setupLinux)
setup$YYPLATFORM_name

popd >/dev/null

exit 0

