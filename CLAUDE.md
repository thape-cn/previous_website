# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the **THAPE official website**, a Rails 7.2.2 application serving both public and admin interfaces. It features:
- Bilingual site (Chinese/English) with locale-aware routing
- Admin panel with authentication at `/admin`
- File uploads via CarrierWave to Aliyun OSS
- Feature flags via Unleash
- Monitoring via RorVsWild
- CI/CD via CircleCI and GitLab CI

## Common Commands

### Setup
```bash
bundle install
yarn install
rails credentials:edit  # Configure Aliyun and WeChat credentials
rails db:create db:migrate db:seed
rails console
  > Home.create
  > Seo.create
  > ServiceFile.create
  > About.create
```

### Development
```bash
rails server                    # Start local server
rails console                   # Open Rails console
rails test                      # Run full test suite
rails test test/models/user_test.rb  # Run single test
rails db:migrate                # Apply migrations
```

### Code Quality
```bash
bundle exec rubocop             # Run linter
```

### Deployment
```bash
bundle exec cap staging deploy  # Deploy to staging
bundle exec cap production deploy  # Deploy to production
```

## Application Architecture

### Directory Structure
```
├── app/
│   ├── controllers/
│   │   ├── admin/              # Admin namespace (auth required, admin layout)
│   │   └── application_controller.rb  # Sets locale, SEO, feature flags
│   ├── models/                 # ActiveRecord models
│   ├── uploaders/              # CarrierWave uploaders
│   ├── views/
│   │   ├── layouts/admin.html.erb  # Admin panel layout
│   │   └── kaminari/           # Pagination partials
│   └── assets/                 # Sprockets pipeline
│
├── config/
│   ├── routes.rb               # Public routes (localized)
│   ├── routes/admin.rb         # Admin routes
│   └── initializers/
│       ├── assets.rb           # Asset precompile list
│       ├── unleash.rb          # Feature flag client
│       ├── rorvswild.rb        # Monitoring
│       └── route_translator.rb # i18n routing config
│
├── test/                       # Minitest suite
└── .cursor/rules/              # Development guidelines
```

### Core Components

**Routing & i18n**
- All URLs include locale (`/en/...` or `/cn/...`), default is `cn`
- Public routes wrapped in `localized` block in `config/routes.rb`
- Admin routes at `/admin` namespace from `config/routes/admin.rb`
- Non-admin traffic is 301 redirected to `https://www.thape.com`

**Authentication**
- Admin authentication via `Admin::SessionsController#create`
- Session helpers: `log_in`, `log_out`, `current_user`, `logged_in?`
- Admin controllers inherit from `Admin::ApplicationController` with `admin` layout

**File Uploads**
- CarrierWave with Aliyun OSS storage (production/test uses file storage)
- Uploaders in `app/uploaders/` (photo_uploader, banner_uploader, etc.)
- Models mount uploaders via `mount_uploader :column, UploaderClass`

**Feature Flags & Monitoring**
- Unleash client initialized in `config/initializers/unleash.rb`
- Context built from session_id, remote_address, user_id in ApplicationController
- RorVsWild monitoring starts in `config/initializers/rorvswild.rb`

**SEO**
- `@seo` variable set from `Seo.first` in `ApplicationController#prepare_seo_variable`

### Testing Stack
- **Framework**: Minitest
- **System tests**: Capybara + Selenium WebDriver
- **CI**: Minitest-ci and SimpleCov
- **Structure**: Mirror app/ directory (models/, controllers/, integration/)
- **Fixtures**: Stored in `test/fixtures/`

## Key Files to Reference

When working on specific features:

- **Feature flags**: `config/initializers/unleash.rb`
- **Assets**: `config/initializers/assets.rb`, `app/assets/javascripts`, `app/assets/stylesheets`
- **Routing**: `config/routes.rb`, `config/routes/admin.rb`
- **Admin auth**: `app/controllers/admin/sessions_controller.rb`, `app/helpers/admin/sessions_helper.rb`
- **Uploaders**: `app/uploaders/*.rb`
- **Application controller**: `app/controllers/application_controller.rb`

## Development Guidelines

**Models**
- Use CarrierWave uploaders for file fields
- Follow Rails naming conventions

**Controllers**
- Public controllers use before_action for setup, set locale, SEO variables
- Admin controllers inherit from `Admin::ApplicationController`
- Protect admin actions with `before_action :logged_in_user`

**Views**
- Use URL helpers with locale: `path(locale: I18n.locale)`
- Pagination via Kaminari partials

**Testing**
- Create system tests for critical admin flows (login, CRUD)
- Integration tests for routing/i18n behavior
- Use fixtures for test data

## Credentials Required

The following credentials must be configured in `rails credentials:edit`:

```yml
aliyun:
  access_key_id: <key>
  secret_access_key: <secret>

secret_key_base: <secret>
wechat_appid: <app_id>
wechat_secret: <secret>
wechat_token: <token>
wechat_encoding_aes_key: <key>
```

## Redirect Behavior

**Important**: All non-admin requests from this application are permanently redirected to `https://www.thape.com` while preserving the path. This is by design for the old web application.
