module Admin
  class PicturesController < Admin::ApplicationController
    before_action :logged_in_user
    def index
      @pictures = Picture.all.order(id: :desc).page(params[:page]).per(params[:per_page])
    end
  end
end
