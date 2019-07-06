class InfosController < ApplicationController
  def index
    @infos = Info.order(position: :asc).page(params[:page]).per(params[:per_page])
    @home = Home.first
  end

  def show
    @info = Info.find(params[:id])
  end
end
