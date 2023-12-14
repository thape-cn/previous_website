Unleash.configure do |config|
  config.instance_id         = 'thape_web_backend'
  config.app_name            = 'thape_old_web'
  config.url                 = 'https://unleash.thape.com.cn/api'
  config.custom_http_headers = {'Authorization': Rails.application.credentials.unleash_token}
  config.logger   = Rails.logger
end

UNLEASH = Unleash::Client.new
