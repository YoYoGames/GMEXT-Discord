#!/bin/bash

source "$(dirname "$0")/scriptUtils.sh"

# ######################################################################################
# Macros

pathExtractDirectory "$0" SCRIPT_PATH
pathExtractBase "$0" EXTENSION_NAME

export SCRIPT_PATH
export EXTENSION_NAME

# Version locks
RUNTIME_VERSION_STABLE="${!YYEXTOPT_${EXTENSION_NAME}_versionStable}"
RUNTIME_VERSION_BETA="${!YYEXTOPT_${EXTENSION_NAME}_versionBeta}"
RUNTIME_VERSION_RED="${!YYEXTOPT_${EXTENSION_NAME}_versionDev}"

# SDK hash
SDK_HASH_LINUX="${!YYEXTOPT_${EXTENSION_NAME}_sdkHashLinux}"
SDK_HASH_OSX="${!YYEXTOPT_${EXTENSION_NAME}_sdkHashMac}"

# SDK path
SDK_PATH=${!YYEXTOPT_${EXTENSION_NAME}_sdkPath}
SDK_PATH=${!YYEXTOPT_${EXTENSION_NAME}_sdkVersion}

# ######################################################################################
# Script Functions

setupmacOS() {

    SDK_SOURCE="$SDK_PATH/lib/x86_64/discord_game_sdk.dylib"
    assertFileHash $SDK_SOURCE $SDK_HASH_OSX "$EXTENSION_NAME SDK (v$SDK_PATH)"
    
    echo "Copying macOS (64 bit) dependencies"
    if [[ "$YYTARGET_runtime" == "VM" ]]; then
        fileCopyTo $SDK_SOURCE "discord_game_sdk.dylib"
    else
        fileCopyTo $SDK_SOURCE "${YYprojectName}/${YYprojectName}/Supporting Files/discord_game_sdk.dylib"
    fi
}

setupLinux() {

    SDK_SOURCE="$SDK_PATH/lib/x86_64/libdiscord_game_sdk.so"
    assertFileHash $SDK_SOURCE $SDK_HASH_LINUX "$EXTENSION_NAME SDK (v$SDK_PATH)"

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

