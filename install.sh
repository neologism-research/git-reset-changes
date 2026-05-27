#!/usr/bin/env bash
set -euo pipefail

# Configuration
REPO_NAME="git-reset-changes"
INSTALL_DIR="/usr/local/bin"

echo "========================================="
echo " Installing git-reset-changes Plugin"
echo "========================================="

# Verify operating system compatibility
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "❌ Native auto-installers do not explicitly support plain Windows environments."
    echo "Please copy the 'git-reset-changes' script directly into your Git bin pathway manually."
    exit 1
fi

# Dependency Warning Block
if ! command -v fzf &> /dev/null; then
    echo "⚠️  Warning: 'fzf' was not detected on your system paths."
    echo "Interactive terminal views require fzf. Install it via 'brew install fzf' or your native package manager."
fi

# Direct download execution if run remotely, or fallback to local context copy
if [[ -f "./git-reset-changes" ]]; then
    echo "Installing from local file clone context..."
    sudo cp ./git-reset-changes "$INSTALL_DIR/git-reset-changes"
else
    # Replace USERNAME below with your GitHub username once repository is initialized
    GITHUB_RAW_URL="https://raw.githubusercontent.com/USERNAME/$REPO_NAME/main/git-reset-changes"
    echo "Downloading stable script target from GitHub..."
    curl -sSL "$GITHUB_RAW_URL" -o /tmp/git-reset-changes
    sudo mv /tmp/git-reset-changes "$INSTALL_DIR/git-reset-changes"
fi

# Mark execution permissions
sudo chmod +x "$INSTALL_DIR/git-reset-changes"

echo "========================================="
echo "✅ Installation Completed Successfully!"
echo "Try running: git reset-changes --help"
echo "========================================="