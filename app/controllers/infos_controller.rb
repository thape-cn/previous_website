class InfosController < ApplicationController
  def index
    @infos = Info.where(hide_in_index_news: false).order(position: :asc).page(params[:page]).per(params[:per_page])
    @home = Home.first
  end

  def show
    @info = Info.find(params[:id])
  end
end
