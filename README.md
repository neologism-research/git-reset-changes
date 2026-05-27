# git-reset-changes

A robust, interactive Git extension to instantly reset file histories across multiple local commits and unstaged directories back to their original versions on a target source branch.

No individual patch hunting, no messy merge conflicts later—just a streamlined visual interactive experience built on top of native Git structures.

## Features

- **Visual TUI Mode:** Multi-select files smoothly utilizing standard interactive selection frameworks (`fzf`).
- **Dynamic Branch Sorting:** Standard default repository targets (`main` or `master`) are instantly prioritized at the very top of lists.
- **Spaces & Path Safe:** Built from the ground up to securely handle filenames featuring spaces or complex characters.
- **Zero Auto-Commits:** Resets working and staging trees exclusively. You remain in total control of when actions get logged into your history.
- **Dual Pipeline Integration:** Drop seamlessly into a UI or script directly from automation with pure CLI overrides.

## Requirements

- **Git** (Version 2.23+)
- **[fzf](https://github.com/junegunn/fzf)** (Only needed for interactive terminal search layouts)

## Installation

### Method 1: The Quick Install (Universal Mac/Linux)

Paste this direct command terminal pipeline into your workspace:

```bash
curl -sSL [https://raw.githubusercontent.com/USERNAME/git-reset-changes/main/install.sh](https://raw.githubusercontent.com/USERNAME/git-reset-changes/main/install.sh) | bash

```

### Method 2: Manual Installation

Clone this repository, then mark the command executable within your preferred system path:

```bash
cp git-reset-changes /usr/local/bin/git-reset-changes
chmod +x /usr/local/bin/git-reset-changes

```

## Usage

### 1. Interactive Selection (TUI Mode)

Run the script command with no trailing arguments inside any active Git repo:

```bash
git reset-changes

```

- Use the arrow keys or type characters to search branches/files.
- Press **`Space`** or **`Tab`** to toggle selection checkboxes for individual files.
- Press **`Enter`** to instantly pull down chosen source histories into your active workspace.

### 2. Direct Automation (CLI Mode)

Bypass visual components entirely by passing the source branch target followed by explicit file system targets:

```bash
git reset-changes main src/components/Button.tsx config/settings.json

```
