class InfosController < ApplicationController
  def index
    @infos = Info.where(hide_in_index_news: false).order(position: :asc).page(params[:page]).per(params[:per_page])
    @home = Home.first
  end

  def show
    @info = Info.find(params[:id])

    @seo.abstract = @info.seo_title if @info.seo_title.present?
    @seo.keywords = @info.seo_keywords if @info.seo_keywords.present?
    @seo.description = @info.seo_description if @info.seo_description.present?
  end
end
