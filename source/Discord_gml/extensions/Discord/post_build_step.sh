#!/bin/bash

chmod +x "$(dirname "$0")/scriptUtils.sh"
source "$(dirname "$0")/scriptUtils.sh"

# ######################################################################################
# Script Functions

setupmacOS() {

    SDK_SOURCE_X64="$SDK_PATH/lib/x86_64/discord_game_sdk.dylib"
    SDK_SOURCE_ARM64="$SDK_PATH/lib/aarch64/discord_game_sdk.dylib"
    assertFileHashEquals $SDK_SOURCE_X64 $SDK_HASH_OSX $ERROR_SDK_HASH

    echo "Copying macOS (64 bit) dependencies"
    if [[ "$YYTARGET_runtime" == "VM" ]]; then
        lipo "$SDK_SOURCE_X64" "$SDK_SOURCE_ARM64" -output "discord_game_sdk.dylib" -create
    else
        lipo "$SDK_SOURCE_X64" "$SDK_SOURCE_ARM64" -output "${YYprojectName}/${YYprojectName}/Supporting Files/discord_game_sdk.dylib" -create
    fi
}

setupLinux() {

    SDK_SOURCE="$SDK_PATH/lib/x86_64/libdiscord_game_sdk.so"
    assertFileHashEquals $SDK_SOURCE $SDK_HASH_LINUX $ERROR_SDK_HASH

    echo "Copying Linux (64 bit) dependencies"
    
    fileExtract "${YYprojectName}.zip" "_temp"
    [[ ! -f "_temp/assets/libdiscord_game_sdk.so" ]] && fileCopyTo $SDK_SOURCE "_temp/assets/libdiscord_game_sdk.so"
    folderCompress "_temp" "${YYprojectName}.zip"
    rm -r _temp
}

# ######################################################################################
# Script Logic

# Always init the script
scriptInit

# Version locks
optionGetValue "versionStable" RUNTIME_VERSION_STABLE
optionGetValue "versionBeta" RUNTIME_VERSION_BETA
optionGetValue "versionDev" RUNTIME_VERSION_DEV
optionGetValue "versionLTS" RUNTIME_VERSION_LTS

# SDK hash
optionGetValue "sdkHashLinux" SDK_HASH_LINUX
optionGetValue "sdkHashMac" SDK_HASH_OSX

# SDK data
optionGetValue "sdkVersion" SDK_VERSION
optionGetValue "sdkPath" SDK_PATH

ERROR_SDK_HASH="Invalid Discord SDK version, sha256 hash mismatch (expected v$SDK_VERSION)"

# Checks IDE and Runtime versions
versionLockCheck "$YYruntimeVersion" $RUNTIME_VERSION_STABLE $RUNTIME_VERSION_BETA $RUNTIME_VERSION_DEV $RUNTIME_VERSION_LTS

# Resolve the SDK path (must exist)
pathResolveExisting "$YYprojectDir" $SDK_PATH SDK_PATH

# Ensure we are on the output path
pushd "$YYoutputFolder" >/dev/null

# Call setup method depending on the platform
# NOTE: the setup method can be (:setupmacOS or :setupLinux)
setup$YYPLATFORM_name

popd >/dev/null

exit 0

