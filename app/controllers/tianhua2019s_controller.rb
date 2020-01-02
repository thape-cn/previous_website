class Tianhua2019sController < ApplicationController
  wechat_api
  layout "tianhua2019"

  def show
    r = Tianhua2019.find_by!(clerkcode: params[:id])
    page3_busy_percent = if r.rank.present?
      "#{(r.rank*100).to_i}%"
    end
    page3_filling_rate = if r.fill_rate.present?
      "#{(r.fill_rate*100).to_i}%"
    end
    @tianhua2019 = {
      page2_year: 2020,
      page2_age: years_between_dates(r.firstday),
      page2_day: (Date.today - r.firstday).floor,
      page3_busy_percent: page3_busy_percent,
      page3_busy_month: r.max_month&.month,
      page3_busy_workday: '周四',
      page3_filling_rate: page3_filling_rate,
      page4_project_num: r.prjno,
      page4_project_owner: r.max_serve_client,
      page4_project_name: r.max_projectname,
      page4_work_day: r.max_workdays
    }
  end

  def index
    wechat_oauth2 do |user_name|
      tianhua2019 = Tianhua2019.find_by email: "#{user_name}@thape.com.cn"
      if tianhua2019.present?
        return redirect_to tianhua2019_path(id: tianhua2019.clerkcode)
      else
        return render
      end
    end
  end

  private

  def years_between_dates(date_from, date_to = Date.today)
    ((date_to - date_from) / 365).ceil
  end

end
