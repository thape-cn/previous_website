class Tianhua2019sController < ApplicationController
  layout "tianhua2019"

  def show
    r = Tianhua2019.find_by!(clerkcode: params[:id])
    @tianhua2019 = {
      page2_year: 2020,
      page2_age: years_between_dates(r.firstday),
      page2_day: (Date.today - r.firstday).floor,
      page3_busy_percent: "#{(r.rank*100).to_i}%",
      page3_busy_month: r.max_month.month,
      page3_busy_workday: '周四',
      page3_filling_rate: "#{(r.fill_rate*100).to_i}%",
      page4_project_num: r.prjno,
      page4_project_owner: r.max_serve_client,
      page4_project_name: r.max_projectname,
      page4_work_day: r.max_workdays
    }
  end

  def index
    redirect_to tianhua2019_path(id: '017081')
  end

  private

  def years_between_dates(date_from, date_to = Date.today)
    ((date_to - date_from) / 365).ceil
  end

end
