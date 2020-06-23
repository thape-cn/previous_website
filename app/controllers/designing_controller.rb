class DesigningController < ApplicationController
  def index
    @people = Person.where(leaving_date: nil).where(category: 2).where(in_old_web: true)
      .order(position: :asc).page(params[:page]).per(params[:per_page])
  end

  def show
    @person = Person.where(leaving_date: nil).find_by(id: params[:id]) \
      || Person.where(leaving_date: nil).find_by!(url_name: params[:id])
    @infos = Info.order(position: :asc).where(hide_in_design_staff_news: false).limit(5)
    @infos = @infos.where('title LIKE ?', "%#{@person.name}%").or(@infos.where('content LIKE ?', "%#{@person.name}%"))
  end
end
