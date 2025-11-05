# test-ci-rubocop

This repository includes a GitHub Actions CI workflow that automatically checks Ruby code quality using RuboCop.

## RuboCop CI Workflow

The workflow (`.github/workflows/rubocop.yml`) automatically runs on pull requests and:

1. **Detects modified Ruby files** - Only Ruby files changed in the PR are analyzed
2. **Checks safe-correctable offenses** - Uses `--display-only-safe-correctable` flag to show only offenses that can be safely auto-corrected
3. **Provides feedback** - Reports any style violations found in the modified files

### How it works

- **Triggers**: Runs when a pull request is opened, synchronized, or reopened
- **File Detection**: Only analyzes `.rb` files that have been added, copied, modified, renamed, or type-changed
- **RuboCop Check**: Runs RuboCop with the `--display-only-safe-correctable` flag to identify style issues that can be safely fixed automatically

### Usage

Simply create a pull request with Ruby file changes, and the workflow will automatically run RuboCop checks on the modified files.