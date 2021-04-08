# frozen_string_literal: true
set :nginx_use_ssl, true
set :deploy_to, "/var/www/thape_old_web"
set :rails_env, 'staging'
set :puma_service_unit_name, :thape_old_web

server 'bandwagon', user: 'thape_web', roles: %w{app db web}
