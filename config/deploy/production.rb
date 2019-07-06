set :nginx_use_ssl, true

server 'thape_web', user: 'deployer', roles: %w{app db web}
