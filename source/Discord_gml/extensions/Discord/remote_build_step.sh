

# ######################################################################################
# Script Logic

SCRIPT_PATH=$0
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

# Discord libraries (copied over by post_build_step)
SDK_SOURCE_X64="discord_game_sdk_x64.dylib"
SDK_SOURCE_ARM64="discord_game_sdk_arm64.dylib"

# Ensure we are on the working path
pushd "$SCRIPT_DIR/${YYprojectName}/Supporting Files"

# Combine both archs into a single universal dylib
lipo $SDK_SOURCE_X64 $SDK_SOURCE_ARM64 -output discord_game_sdk.dylib -create

# Delete single arch binaries
rm $SDK_SOURCE_X64
rm $SDK_SOURCE_ARM64

popd