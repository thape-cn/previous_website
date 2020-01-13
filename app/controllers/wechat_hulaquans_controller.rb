class WechatHulaquansController < ApplicationController
  wechat_responder account: :hulaquan

  on :text do |request, content|
    request.reply.text "echo: #{content}" # Just echo
  end
end
