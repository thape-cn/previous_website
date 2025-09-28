# Repository Guidelines

## Project Structure & Module Organization
Core Rails code sits in `app/`, with controllers in `app/controllers/`, views in `app/views/`, and mailers/jobs/uploaders in their respective subdirectories. Shared concerns live in `app/models/concerns/` and `app/controllers/concerns/`; extract heavy business logic to `lib/` or a new `app/services/` namespace when needed. Front-end assets stay under `app/assets/`, while static files belong in `public/`. Configuration files are managed from `config/`, and database migrations plus seeds reside in `db/`. The test suite mirrors this tree in `test/`, with fixtures stored in `test/fixtures/`.

## Build, Test, and Development Commands
Run `bundle install` and `yarn install` after each dependency update to sync Ruby gems and front-end packages. Start the local server with `bin/rails server` and inspect data through `bin/rails console`. Apply schema changes via `bin/rails db:migrate` (pair with `bin/rails db:seed` if seed data shifts). Execute `bin/rails test` for the full suite or target a single file, e.g., `bin/rails test test/controllers/users_controller_test.rb`. Enforce formatting and lint rules using `bundle exec rubocop`.

## Coding Style & Naming Conventions
Follow the `.rubocop.yml` defaults: two-space indentation, snake_case for methods and variables, CamelCase for classes/modules, and frozen string literals where required. Keep controllers focused on orchestration; move multi-step workflows into PORO services or modules. Name ERB templates after their routes, prefer partials for reusable fragments, and keep JavaScript in `app/assets/javascripts/`, scoped to Turbolinks events and wrapped in small namespaces instead of globals.

## Testing Guidelines
Minitest powers the suite. Name files `*_test.rb`, mirror the app directory structure, and favor fast unit tests supplemented by integration or system specs in `test/system/`. Keep fixtures minimal but realistic, documenting any assumptions. Every new feature needs regression coverage, and migrations should include assertions that verify data shape or provide reversible paths.

## Commit & Pull Request Guidelines
Commits use short, present-tense summaries (`upgrade devise`, `add admin export`). Reference tickets or follow-ups in the body when useful, and squash noisy WIP commits before opening a PR. Pull requests should outline context, implementation notes, and verification evidence (e.g., `bin/rails test` output or screenshots). Call out breaking changes, new migrations, and configuration updates in a checklist so reviewers can prep deploy steps.
