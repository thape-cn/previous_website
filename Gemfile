source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>= 2.7'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0.1'
gem 'sprockets'
gem 'enumize'
gem 'sqlite3'
gem 'pg'
# Use Puma as the app server
gem 'puma'

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

gem 'geocoder'

gem 'sass-rails'
gem 'ffi'
gem 'jquery-rails'
gem 'mini_magick'
gem 'simditor'
gem "carrierwave"
gem 'carrierwave-aliyun'
gem 'http'

gem 'wechat'

gem 'minitest'

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'debug'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :ci do
  gem 'minitest-ci'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
