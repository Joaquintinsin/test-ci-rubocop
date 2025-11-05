# test-ci-rubocop

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