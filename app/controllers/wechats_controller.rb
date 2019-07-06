class WechatsController < ApplicationController
  # For details on the DSL available within this file, see https://github.com/Eric-Guo/wechat#wechat_responder---rails-responder-controller-dsl
  wechat_responder

  on :text do |request, content|
    request.reply.text "echo: #{content}" # Just echo
  end

  on :voice do |request|
    voice_id = request[:MediaId]
    recognition = request[:Recognition]
    Rails.logger.debug "voice_id: #{voice_id}"
    Rails.logger.debug "recognition: #{request}"
    request.reply.text "#{voice_id} #{recognition}"
  end
end
