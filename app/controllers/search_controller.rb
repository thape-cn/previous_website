class SearchController < ApplicationController
  def query
    info_title_result = Info.where('title LIKE ?', "%#{params[:q]}%").order(position: :asc).limit(10)
    case_title_result = Case.where('title LIKE ?', "%#{params[:q]}%").limit(10)
    info_introduction_result = Info.where('introduction LIKE ?', "%#{params[:q]}%").where.not(id: info_title_result.pluck(:id)).order(position: :asc).limit(10)
    info_content_result = Info.where('content LIKE ?', "%#{params[:q]}%")
      .where.not(id: info_title_result.pluck(:id) + info_introduction_result.pluck(:id)).order(position: :asc).limit(10)
    @results = [info_title_result, case_title_result, info_introduction_result,info_content_result]
  end
end
