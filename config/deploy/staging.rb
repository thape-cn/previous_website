# frozen_string_literal: true
set :nginx_use_ssl, true
set :deploy_to, "/var/www/thape_old_web"
set :rails_env, 'staging'
set :puma_service_unit_name, :puma_thape_old_web
set :puma_systemctl_user, :system

server 'bandwagon', user: 'thape_web', roles: %w{app db web}
