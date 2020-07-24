module Admin
  class TailHomesController < Admin::ApplicationController
    before_action :logged_in_user

    def edit
      @home = TailHome.first
    end
  end
end
