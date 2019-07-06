module Admin
  class SessionsController < Admin::ApplicationController
    layout 'signin'

    def new

    end

    def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to admin_root_path
        else
          flash.now[:danger] = '错误 邮箱地址/密码 不正确'
          render 'new'
      end
    end

    def destroy
      log_out
      redirect_to root_url
    end

  end
end
