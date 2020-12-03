set :nginx_use_ssl, true
set :puma_service_unit_name, :puma_old_web

server 'thape_web', user: 'deployer', roles: %w{app db web}
