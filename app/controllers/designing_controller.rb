class DesigningController < ApplicationController
  def index
    @people = Person.where(category: 2).page(params[:page]).per(params[:per_page])
  end

  def show
    @person = Person.find(params[:id])
    @infos = Info.order(position: :asc).where(hide_in_design_staff_news: false).limit(5)
    @infos = @infos.where('title LIKE ?', "%#{@person.name}%").or(@infos.where('content LIKE ?', "%#{@person.name}%"))
  end
end
