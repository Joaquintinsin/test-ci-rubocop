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
## Ruby on Rails 8.0 Basic Application

This is a basic Ruby on Rails application with the following specifications:

- **Ruby Version**: 3.3.1 (as specified in `.ruby-version`)
- **Rails Version**: 8.0.4
- **Database**: SQLite3

## Features

- Standard Rails 8.0 application structure
- GitHub Actions CI/CD workflow with:
  - RuboCop linting
  - Brakeman security scanning
  - Automated tests
- Docker support
- Progressive Web App (PWA) support
- Welcome page at root route

## Getting Started

### Prerequisites

- Ruby 3.3.1
- Bundler

### Setup

```bash
# Install dependencies
bundle install

# Setup database
rails db:setup

# Start the server
rails server
```

Visit http://localhost:3000 to see the welcome page.

## Testing

```bash
rails test
```

## Linting

```bash
bin/rubocop
```

## Security Scanning

```bash
bin/brakeman
```
