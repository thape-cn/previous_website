set :nginx_use_ssl, true
set :puma_service_unit_name, :puma_old_web
set :puma_systemctl_user, :system

server 'thape_web2', user: 'thape_web', roles: %w{app db web}
