#!/bin/bash

SCRIPT_PATH="$0"

# Auxiliar Functions

# Script initialization
# Usage: scriptInit
scriptInit() {
    LOG_LABEL="UNSET"
    LOG_LEVEL=-1
    EXTENSION_NAME=

    # Get extension data
    pathExtractBase $SCRIPT_PATH EXTENSION_NAME
    extensionGetVersion EXTENSION_VERSION
    if [ -z "$EXTENSION_VERSION" ]; then
        EXTENSION_VERSION="0.0.0"
    fi

    # Setup logger
    toUpper $EXTENSION_NAME LOG_LABEL
    optionGetValue "logLevel" LOG_LEVEL
    if [ -z "$LOG_LEVEL" ]; then
        LOG_LEVEL=2
    fi

    # Check if the operation succeeded
    if [ "$?" -ne 0 ]; then
        log "INIT" "Script initialization failed (v$EXTENSION_VERSION :: $LOG_LEVEL)."
    else
        log "INIT" "Script initialization succeeded (v$EXTENSION_VERSION :: $LOG_LEVEL)."
    fi
}

# Gets the extension version value
# Usage: extensionGetVersion result
extensionGetVersion() {
    # Enable indirect variable reference
    set -f
    local var="GMEXT_${EXTENSION_NAME}_version"
    local result="${!var}"
    set +f

    logInformation "Accessed extension version with value '${result}'."
    eval "$1=\"\$result\""
}

# Gets an extension option value
# Usage: optionGetValue optionName result
optionGetValue() {

    # Enable indirect variable reference
    set -f
    local var="YYEXTOPT_${EXTENSION_NAME}_$1"
    local result="${!var}"
    set +f

    logInformation "Accessed extension option '${1}' with value '${result}'."
    eval "$2=\"\$result\""
}

# Sets a string to uppercase
toUpper() { # str result
    eval "$2=$(echo $1 | tr '[:lower:]' '[:upper:]')"
    logInformation "Converted string '$1' to upper case."
}

# Extracts the full folder path from a filepath
# Usage: pathExtractDirectory fullpath result
pathExtractDirectory() {
    eval "$2=\"$(dirname "$1")\""
    logInformation "Extracted directory path from '$1'."
}

# Extracts the parent folder from a path
# Usage: pathExtractBase fullpath result
pathExtractBase() {
    eval "$2=\"$(basename $(dirname "$1"))\""
    logInformation "Extracted base name from '$1'."
}

# Resolves a relative or absolute path to an absolute path
# Usage: pathResolve basePath relativePath result
pathResolve() {
    local base="$1"
    local relative="$2"
    local resolvedPath=
    resolvedPath="$(readlink -f "$base/$relative")"

    logInformation "Resolved path into '$resolvedPath'."
    eval "$3=\"$resolvedPath\""
}

# Resolves an existing relative path if required (handles errors)
# Usage: pathResolveExisting basePath relativePath result
pathResolveExisting() {
    local existingPath=""
    pathResolve "$1" "$2" existingPath

    # Check if the path is valid
    if [ ! -e "$existingPath" ]; then
        logError "Path '$existingPath' does not exist or is not accessible."
    fi
    
    eval "$3=\"$existingPath\""
}

# Copies a file or folder to the specified destination folder
# Usage: itemCopyTo srcPath destFolder
itemCopyTo() {
    local source="$1"
    local destination="$2"
    local resolved_destination=""

    # Resolve the destination folder to an absolute path
    pathResolve "$PWD" "$destination" resolved_destination

    if [ -d "$source" ]; then
        # Source is a folder
        cp -R "$source" "$resolved_destination"
    elif [ -f "$source" ]; then
        # Source is a file
        cp "$source" "$resolved_destination"
    else
        logError "Falied to copy '$source' does not exist or is not accessible."
        exit 1
    fi

    if [ $? -ne 0 ]; then
        logError "Failed to copy '$source' to '$resolved_destination'."
        exit 1
    fi

    logInformation "Copied '$source' to '$resolved_destination'."
}

# Generates the SHA256 hash of a file and stores it into a variable
# Usage: fileGetHash filepath result
fileGetHash() {
    local file="$1"
    local hash=""

    if [ ! -f "$file" ]; then
        logError "Failed to generate hash for '$file' does not exist or is not a file."
        exit 1
    fi

    hash=$(shasum -a 256 "$file" | awk '{print $1}')

    if [ $? -ne 0 ]; then
        logError "Failed to generate hash for '$file'."
        exit 1
    fi

    toUpper "$hash" hash

    eval "$2=\"$hash\""
    logInformation "Generated SHA256 hash of '$file'."
}

# Extracts the contents of a zip file to the specified destination folder
# Usage: fileExtract srcFile destFolder
fileExtract() {
    local source="$1"
    local destination="$2"

    # Create the destination folder if it doesn't exist
    mkdir -p "$destination"

    # Extract the zip file to the destination folder
    unzip -q "$source" -d "$destination"

    if [ $? -ne 0 ]; then
        logError "Failed to extract contents of '$source' to '$destination'."
        exit 1
    fi

    logInformation "Extracted contents of '$source' to '$destination'."
}

# Compresses the contents of a folder into a zip file
# Usage: folderCompress srcFolder destFile
folderCompress() {
    local source="$1"
    local destination="$2"

    # Compress the contents of the folder to the destination file
    zip -j -r -q "$destination" "$source"

    if [ $? -ne 0 ]; then
        logError "Failed to compress contents of '$source' into '$destination'."
        exit 1
    fi

    logInformation "Compressed contents of '$source' into '$destination'."
}

# Extracts a specified part of a version string and stores it into a variable
# Usage: versionExtract version part result
versionExtract() {
    local version="$1"
    local part="$2"

    # Use awk to extract the specified part of the version string
    local result="$(echo "$version" | awk -F '.' "{print \$$part}")"

    # Store the result in the specified variable
    eval "$3=\"$result\""

    # Display a log message
    logInformation "Extracted part $part of version '$version' with value '$result'."
}

# Compares two version numbers (w.x.y.z) and saves result into variable
# Usage: versionCompare version1 version2 result
versionCompare() {
    local version1="$1"
    local version2="$2"

    # Use awk to split the version numbers into components
    local version1_parts=($(echo "$version1" | awk -F '.' '{print $1,$2,$3,$4}'))
    local version2_parts=($(echo "$version2" | awk -F '.' '{print $1,$2,$3,$4}'))

    # Compare the components of the version numbers
    for i in {0..3}; do
        if [ "${version1_parts[$i]}" -lt "${version2_parts[$i]}" ]; then
        result=-1
        break
        elif [ "${version1_parts[$i]}" -gt "${version2_parts[$i]}" ]; then
        result=1
        break
        else
        result=0
        fi
    done

    # Store the result in the specified variable
    eval "$3=\"$result\""

    # Display a log message
    logInformation "Compared version '$version1' with version '$version2'."
}

# Check minimum required versions for STABLE|BETA|DEV releases
# Usage: versionLockCheck version stableVersion betaVersion devVersion
versionLockCheck() {
    local version="$1"
    local stableVersion="$2"
    local betaVersion="$3"
    local devVersion="$4"

    # Extract the major and minor version numbers from the given version
    local majorVersion=
    local minorVersion=
    versionExtract "$version" 1 majorVersion
    versionExtract "$version" 2 minorVersion

    if [ "$majorVersion" -ge 2020 ]; then
        if [ "$minorVersion" -ge 100 ]; then
        # Beta version
        assertVersionRequired "$version" "$betaVersion" "The runtime version needs to be at least v$betaVersion."
        else
        # Stable version
        assertVersionRequired "$version" "$stableVersion" "The runtime version needs to be at least v$stableVersion."
        fi
    else
        # Dev version
        assertVersionRequired "$version" "$devVersion" "The runtime version needs to be at least v$devVersion."
    fi

    logInformation "Version lock check passed successfully, with version '$version'."
}

# ASSERTS

# Asserts the SHA256 hash of a file, logs an error message and throws an error if they do not match
# Usage: assertFileHashEquals filepath expected message
assertFileHashEquals() {
    local filepath="$1"
    local expected="$2"
    local message="$3"

    # Generate hash
    local actualHash=
    fileGetHash "$filepath" actualHash

    # Compare the actual hash with the expected hash
    if [ "$actualHash" != "$expected" ]; then
        logError "$message"
        exit 1
    fi

    # Log a message
    logInformation "Asserted SHA256 hash of '$filepath' matches expected hash."
}

# Asserts that the given version string is greater than the expected version string, logs an error message and throws an error if not
# Usage: assertVersionRequired version expected message
assertVersionRequired() {
    local version="$1"
    local expected="$2"
    local message="$3"

    # Compare the two version strings using versionCompare
    local compareResult=
    versionCompare "$version" "$expected" compareResult

    # Check the result and log an error message and throw an error if not greater
    if [ "$compareResult" -lt 0 ]; then
        logError "$message"
        exit 1
    fi

    # Log a message
    logInformation "Asserted that version '$version' is greater than or equal to version '$expected'."
}

# Asserts that the given version string is equal to the expected version string, logs an error message and throws an error if not
# Usage: assertVersionEquals version expected message
assertVersionEquals() {
    local version="$1"
    local expected="$2"
    local message="$3"

    # Compare the two version strings using versionCompare
    local compareResult=
    versionCompare "$version" "$expected" compareResult

    # Check the result and log an error message and throw an error if not equal
    if [ "$compareResult" -ne 0 ]; then
        logError "$message"
        exit 1
    fi

    # Log a message
    logInformation "Asserted that version '$version' equals version '$expected'."
}

# Logging

# Logs information
# Usage: logInformation message
logInformation() {
    if [ "$LOG_LEVEL" -ge 2 ]; then
        log "INFO" "$1"
    fi
}

# Logs warning
# Usage: logWarning message
logWarning() {
    if [ "$LOG_LEVEL" -ge 1 ]; then
        log "WARN" "$1"
    fi
}

# Logs error
# Usage: logError message
logError() {
    if [ "$LOG_LEVEL" -ge 0 ]; then
        log "ERROR" "$1"
    fi
    exit 1
}

# General log function
# Usage: log tag message
log() {
    echo "[$LOG_LABEL] $1: $2"
}

