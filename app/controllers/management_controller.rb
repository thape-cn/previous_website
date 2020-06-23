class ManagementController < ApplicationController
  def index
    @people = Person.where(leaving_date: nil).where(category: 1).where(in_old_web: true)
      .order(position: :asc).page(params[:page]).per(params[:per_page])
  end

  def show
    @person = Person.where(leaving_date: nil).find_by(id: params[:id]) \
      || Person.where(leaving_date: nil).find_by!(url_name: params[:id])
  end
end
