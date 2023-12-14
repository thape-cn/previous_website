Unleash.configure do |config|
  config.instance_id         = 'thape_web_backend'
  config.app_name            = 'default'
  config.url                 = 'https://unleash.thape.com.cn/api'
  config.custom_http_headers = {'Authorization': Rails.application.credentials.unleash_token}
end
