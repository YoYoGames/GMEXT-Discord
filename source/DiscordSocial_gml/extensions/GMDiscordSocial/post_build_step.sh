#!/bin/bash

sed -i -e 's/\r$//' "$(dirname "$0")/scriptUtils.sh"
chmod +x "$(dirname "$0")/scriptUtils.sh"
source "$(dirname "$0")/scriptUtils.sh"

EXTENSION_DIR="$(cd "$(dirname "$0")" && pwd -P)"

# ######################################################################################
# Script Functions

# ----------------------------------------------------------------------------------------------------
setupWindows() {
    # Resolve the SDK path (must exist)
    pathResolveExisting "$YYprojectDir" "$WIN_SDK_PATH" SDK_PATH

    SDK_SOURCE="$SDK_PATH/bin/release/discord_partner_sdk.dll"

    echo "Copying Windows (64 bit) dependencies"
    itemCopyTo "$SDK_SOURCE" "./discord_partner_sdk.dll"
}

# ----------------------------------------------------------------------------------------------------
setupmacOS() {
    # Resolve the SDK path (must exist)
    pathResolveExisting "$YYprojectDir" "$MACOS_SDK_PATH" SDK_PATH

    SDK_SOURCE="$SDK_PATH/lib/release/libdiscord_partner_sdk.dylib"

    # Strip macOS quarantine flag if present (Gatekeeper would otherwise block the dylib)
    for f in "${SDK_SOURCE}"; do
        [ -n "$f" ] || continue

        if [ ! -e "$f" ]; then
            logWarning "Not found: $f"
            continue
        fi

        if xattr -p com.apple.quarantine "$f" >/dev/null 2>&1; then
            logWarning "'$(basename "$f")' is quarantined. Removing com.apple.quarantine…"
            if xattr -d com.apple.quarantine "$f" >/dev/null 2>&1; then
                logInformation "Removed quarantine from '$f'"
            else
                logError "Failed to remove quarantine from '$f' (permissions/path?)."
            fi
        fi
    done

    echo "Copying macOS (64 bit) dependencies"

    if [[ "$YYTARGET_runtime" == "VM" ]]; then
        logError "Extension is not compatible with the macOS VM export, please use YYC."
    else
        # When running from CI the 'YYprojectName' will not be set use 'YYprojectPath' instead.
        if [ -z "$YYprojectName" ]; then
            YYprojectName=$(basename "${YYprojectPath%.*}")
        fi

        # Replace spaces with underscores (this matches the assetcompiler output)
        YYfixedProjectName="${YYprojectName// /_}"

        itemCopyTo "$SDK_SOURCE" "${YYfixedProjectName}/${YYfixedProjectName}/Supporting Files/libdiscord_partner_sdk.dylib"
    fi
}

# ----------------------------------------------------------------------------------------------------
setupMac() {
    # Resolve the SDK path (must exist)
    pathResolveExisting "$YYprojectDir" "$MACOS_SDK_PATH" SDK_PATH

    SDK_SOURCE="$SDK_PATH/lib/release/libdiscord_partner_sdk.dylib"

    # Strip macOS quarantine flag if present (Gatekeeper would otherwise block the dylib)
    for f in "${SDK_SOURCE}"; do
        [ -n "$f" ] || continue

        if [ ! -e "$f" ]; then
            logWarning "Not found: $f"
            continue
        fi

        if xattr -p com.apple.quarantine "$f" >/dev/null 2>&1; then
            logWarning "'$(basename "$f")' is quarantined. Removing com.apple.quarantine…"
            if xattr -d com.apple.quarantine "$f" >/dev/null 2>&1; then
                logInformation "Removed quarantine from '$f'"
            else
                logError "Failed to remove quarantine from '$f' (permissions/path?)."
            fi
        fi
    done

    echo "Copying macOS (64 bit) dependencies (GMRT)"
    pushd "./build/assets/" >/dev/null
    itemCopyTo "$SDK_SOURCE" "./libdiscord_partner_sdk.dylib"
    popd >/dev/null
}

# ----------------------------------------------------------------------------------------------------
setupLinux() {
    # Resolve the SDK path (must exist)
    pathResolveExisting "$YYprojectDir" "$LINUX_SDK_PATH" SDK_PATH

    SDK_SOURCE="$SDK_PATH/lib/release/libdiscord_partner_sdk.so"

    echo "Copying Linux (64 bit) dependencies"

    # When running from CLI 'YYprojectName' will not be set, use 'YYprojectPath' instead.
    if [ -z "$YYprojectName" ]; then
        YYprojectName=$(basename "${YYprojectPath%.*}")
    fi

    TEMP_FOLDER="${YYprojectName}___temp___"

    mkdir "./${TEMP_FOLDER}"
    itemCopyTo "$SDK_SOURCE" "${TEMP_FOLDER}/assets/libdiscord_partner_sdk.so"
    zipUpdate "${TEMP_FOLDER}" "${YYprojectName}.zip"
    rm -r "${TEMP_FOLDER}"
}

# ----------------------------------------------------------------------------------------------------
setupAndroid() {
    # Resolve the SDK path (must exist)
    pathResolveExisting "$YYprojectDir" "$ANDROID_SDK_PATH" SDK_PATH

    SDK_SOURCE="$SDK_PATH/lib/release/discord_partner_sdk.aar"

    echo "Copying Android (aar) dependencies"

    # Ensure the libs-aar folder exists in the extension source
    mkdir -p "$EXTENSION_DIR/AndroidSource/libs-aar"

    itemCopyTo "$SDK_SOURCE" "$EXTENSION_DIR/AndroidSource/libs-aar/discord_partner_sdk.aar"
}

# ----------------------------------------------------------------------------------------------------
setupiOS() {
    # Nothing to do here (handled in pre_build_step)
    :
}

# ######################################################################################
# Script Logic

# Always init the script
scriptInit

# SDK Version (used in error messages)
optionGetValue "sdkVersion" SDK_VERSION

# SDK Paths
optionGetValue "winSdkPath" WIN_SDK_PATH
optionGetValue "macosSdkPath" MACOS_SDK_PATH
optionGetValue "linuxSdkPath" LINUX_SDK_PATH
optionGetValue "androidSdkPath" ANDROID_SDK_PATH

# Ensure we are on the output path
pushd "$YYoutputFolder" >/dev/null

# Call setup method depending on the platform
# NOTE: the setup method can be (setupWindows, setupmacOS, setupLinux, setupAndroid, setupiOS)
setup$YYPLATFORM_name

popd >/dev/null

exit 0
