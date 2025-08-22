#!/bin/bash
set -euo pipefail

# Update version script for semantic-release
# This script updates version numbers across the project

VERSION="$1"

if [[ -z "$VERSION" ]]; then
    echo "Usage: $0 <version>"
    exit 1
fi

echo "Updating version to $VERSION..."

# Update claude-docs-helper.sh
if [[ -f "scripts/bin/claude-docs-helper.sh" ]]; then
    sed -i.bak "s/SCRIPT_VERSION=\"[^\"]*\"/SCRIPT_VERSION=\"$VERSION\"/" scripts/bin/claude-docs-helper.sh
    rm -f scripts/bin/claude-docs-helper.sh.bak
    echo "✓ Updated claude-docs-helper.sh"
fi

# Update install.sh
if [[ -f "scripts/bin/install.sh" ]]; then
    # Update the version in the header comment
    sed -i.bak "s/# Claude Code Docs Installer v[0-9.]*/# Claude Code Docs Installer v$VERSION/" scripts/bin/install.sh
    rm -f scripts/bin/install.sh.bak
    echo "✓ Updated install.sh"
fi

echo "Version update complete: $VERSION"