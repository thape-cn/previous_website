class CasesController < ApplicationController
  def index
    @cases = Case.order(position: :asc)
    @cases = @cases.where('title LIKE ?', "%#{params[:key_word]}%").or(@cases.where('other LIKE ?', "%#{params[:key_word]}%")) if params[:key_word].present?
    @cases = @cases.where('professional LIKE ?', "%\"#{params[:professional_id]}\"%") if params[:professional_id].present?
    @cases = @cases.where('market LIKE ?', "%\"#{params[:market_id]}\"%") if params[:market_id].present?
    @cases = @cases.page(params[:page]).per(params[:per_page])
  end

  def show
    @case = Case.find params[:id]
    two_random_case = Case.pluck(:id).sample(2)
    @first_case = Case.find two_random_case[0]
    @second_case = Case.find two_random_case[1]

    @seo.home_title = @case.seo_title if @case.seo_title.present?
    @seo.keywords = @case.seo_keywords if @case.seo_keywords.present?
    @seo.description = @case.seo_description if @case.seo_description.present?
  end
end
