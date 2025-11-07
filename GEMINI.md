# Project Overview

This project is a Ruby on Rails application that serves as a content management system (CMS) for the website `www.thape.com`. It appears to be a legacy system, as all non-admin traffic is permanently redirected to the main website.

The application is built with Ruby on Rails 7.2 and uses a PostgreSQL database. The frontend is built with traditional Rails views, with some JavaScript for interactivity.

## Key Features

*   **Content Management:** The application has a comprehensive admin interface for managing various types of content, including:
    *   **Cases:** Case studies with images and categories.
    *   **Works:** Projects with detailed information.
    *   **Infos:** News articles.
    *   **People:** Team members.
    *   **Static Pages:** About Us, Services, etc.
*   **Internationalization:** The application supports multiple languages using the `route_translator` and `globalize` gems.
*   **SEO Management:** There is a dedicated section for managing SEO metadata.
*   **File Uploads:** The application uses CarrierWave for handling file uploads, with support for storing files on Aliyun.
*   **WeChat Integration:** The application has some integration with WeChat.
*   **Feature Flags:** The application uses the Unleash feature flagging system.

# Building and Running

## Dependencies

*   Ruby >= 3.0
*   Node.js and Yarn
*   PostgreSQL

## Setup

1.  **Install dependencies:**
    ```bash
    bundle install
    yarn install
    ```

2.  **Configure credentials:**
    ```bash
    rails credentials:edit
    ```
    Paste the following content into the file:
    ```yml
    aliyun:
      access_key_id: a
      secret_access_key: b

    secret_key_base: c
    wechat_appid: d
    wechat_secret: e
    wechat_token: f
    wechat_encoding_aes_key: g
    ```

3.  **Create and migrate the database:**
    ```bash
    bundle exec rails db:create
    bundle exec rails db:migrate
    bundle exec rails db:seed
    ```

4.  **Seed initial data:**
    ```bash
    bundle exec rails c
    irb(main):001:0> Home.create
    Seo.create
    ServiceFile.create
    About.create
    ```

## Running the application

```bash
rails server
```

# Development Conventions

*   **Testing:** The project uses Minitest for testing.
*   **Linting:** The project uses RuboCop for linting Ruby code and yamllint for YAML files.
*   **Continuous Integration:** The project uses CircleCI for continuous integration. The configuration is in `.circleci/config.yml`.
