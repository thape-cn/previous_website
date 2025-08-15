source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>= 3.0'
gem 'ffi', '~> 1.16.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.1.2'
gem "net-imap", "~> 0.4.17"
gem "reline", "~> 0.5.12"
gem 'csv'
gem 'sprockets'
gem 'enumize'
gem 'sqlite3'
gem 'pg'
gem 'puma', '>= 6.5'

gem 'terser'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt'
gem 'route_translator'
gem 'globalize'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb

gem 'font-awesome-rails'
gem 'bootsnap', '>= 1.9.3', require: false
gem 'bootstrap-sass', '~> 3.4.1'
gem 'kaminari'

gem 'browser', "< 6" # support ruby 3.0
gem 'geocoder'

gem 'sass-rails'
gem 'jquery-rails'
gem 'mini_magick'
gem 'simditor'
gem "carrierwave"
gem 'carrierwave-aliyun'

# bundle config local.wechat /Users/$(whoami)/git/oss/wechat/
gem 'wechat', git: "https://git.thape.com.cn/Eric-Guo/wechat.git", branch: :main

gem 'minitest'

gem 'unleash', '~> 6.3.1'

gem 'rorvswild'

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'debug'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma'
  gem 'ed25519'
  gem 'bcrypt_pbkdf'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.39'
  gem 'selenium-webdriver', '~> 4.26.0'
end

group :ci do
  gem 'minitest-ci'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:windows, :jruby]
