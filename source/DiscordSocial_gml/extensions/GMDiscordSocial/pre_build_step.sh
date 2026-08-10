#!/bin/bash

sed -i -e 's/\r$//' "$(dirname "$0")/scriptUtils.sh"
chmod +x "$(dirname "$0")/scriptUtils.sh"
source "$(dirname "$0")/scriptUtils.sh"

EXTENSION_DIR="$(cd "$(dirname "$0")" && pwd -P)"

# ######################################################################################
# Script Functions

# ----------------------------------------------------------------------------------------------------
setupWindows() {
    # Nothing to do here
    :
}

# ----------------------------------------------------------------------------------------------------
setupmacOS() {
    # Nothing to do here
    :
}

# ----------------------------------------------------------------------------------------------------
setupLinux() {
    # Nothing to do here
    :
}

# ----------------------------------------------------------------------------------------------------
setupAndroid() {
    # Nothing to do here
    :
}

# ----------------------------------------------------------------------------------------------------
setupiOS() {
    # Resolve the SDK path (must exist)
    pathResolveExisting "$YYprojectDir" "$IOS_SDK_PATH" SDK_PATH

    XCFRAMEWORK_SRC="$SDK_PATH/lib/release/discord_partner_sdk.xcframework"
    if [ ! -d "$XCFRAMEWORK_SRC" ]; then
        logError "discord_partner_sdk.xcframework not found at '$XCFRAMEWORK_SRC'."
    fi

    IOS_DEST_DIR="$EXTENSION_DIR/iOSSourceFromMac"
    IOS_ZIP="$IOS_DEST_DIR/discord_partner_sdk.zip"
    IOS_TEMP="$IOS_DEST_DIR/_xcf_temp"

    echo "Building iOS xcframework zip"

    # Wipe any previous staging folder/zip so we don't accumulate stale entries
    itemDelete "$IOS_TEMP"
    itemDelete "$IOS_ZIP"

    # Stage the xcframework under a temp folder, then compress to the expected zip layout
    mkdir -p "$IOS_DEST_DIR"
    mkdir -p "$IOS_TEMP"
    itemCopyTo "$XCFRAMEWORK_SRC" "$IOS_TEMP/discord_partner_sdk.xcframework"
    folderCompress "$IOS_TEMP" "$IOS_ZIP"
    itemDelete "$IOS_TEMP"

    # Krisp noise-cancellation framework - always bundled on iOS (declared statically in
    # iosThirdPartyFrameworkEntries; unlike Android/Windows/macOS, GameMaker's Xcode framework-embed
    # list can't be gated by an extension option, so Krisp_Enable does not apply here)
    KRISP_XCFRAMEWORK_SRC="$SDK_PATH/lib/release/discord_partner_sdk_krisp.xcframework"
    if [ ! -d "$KRISP_XCFRAMEWORK_SRC" ]; then
        logError "discord_partner_sdk_krisp.xcframework not found at '$KRISP_XCFRAMEWORK_SRC'."
    fi

    KRISP_ZIP="$IOS_DEST_DIR/discord_partner_sdk_krisp.zip"
    KRISP_TEMP="$IOS_DEST_DIR/_xcf_krisp_temp"

    echo "Building iOS Krisp xcframework zip"

    itemDelete "$KRISP_TEMP"
    itemDelete "$KRISP_ZIP"

    mkdir -p "$KRISP_TEMP"
    itemCopyTo "$KRISP_XCFRAMEWORK_SRC" "$KRISP_TEMP/discord_partner_sdk_krisp.xcframework"
    folderCompress "$KRISP_TEMP" "$KRISP_ZIP"
    itemDelete "$KRISP_TEMP"
}

# ######################################################################################
# Script Logic

# Always init the script
scriptInit

# SDK Version (used in error messages)
optionGetValue "sdkVersion" SDK_VERSION

# SDK Paths
optionGetValue "iosSdkPath" IOS_SDK_PATH

# Ensure we are on the output path
pushd "$YYoutputFolder" >/dev/null

# Call setup method depending on the platform
# NOTE: the setup method can be (setupWindows, setupmacOS, setupLinux, setupAndroid, setupiOS)
setup$YYPLATFORM_name

popd >/dev/null

exit 0
