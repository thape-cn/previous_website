#!/usr/bin/env puma

directory '/var/www/thape_old_web/current'
rackup "/var/www/thape_old_web/current/config.ru"
environment 'staging'

tag ''

pidfile "/var/www/thape_old_web/shared/tmp/pids/puma.pid"
state_path "/var/www/thape_old_web/shared/tmp/pids/puma.state"
stdout_redirect '/var/www/thape_old_web/shared/log/puma_access.log', '/var/www/thape_old_web/shared/log/puma_error.log', true

threads 0,16

bind 'unix:///var/www/thape_old_web/shared/tmp/sockets/puma.sock'

workers 0

restart_command 'bundle exec puma'

prune_bundler

on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = ""
end

require 'unleash'
on_worker_boot do
  # ...

  ::UNLEASH = Unleash::Client.new(
    instance_id: 'thape_web_backend',
    app_name: 'thape_old_web',
    url: 'https://unleash.thape.com.cn/api',
    custom_http_headers: {'Authorization': "default:production.9fd934dd732904fc832758fcc0d5cfed971e9710e1346d64cc9e295c"}
  )
end

on_worker_shutdown do
  ::UNLEASH.shutdown
end
