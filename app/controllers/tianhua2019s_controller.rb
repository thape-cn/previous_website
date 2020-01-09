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
    page3_busy_month = r.max_month.month
    page3_busy_workday = max_workday(r.max_weekday)

    page5_complete_area = if r.prj_area.present?
      "#{r.prj_area.to_i}平方米"
    end
    page6_course_percent = if r.study_rank.present?
      "#{(r.study_rank*100).to_i}%"
    end

    page10_project_name = if r.max_parter_project3.present?
      "#{r.max_parter_project1}<br />#{r.max_parter_project2}<br />#{r.max_parter_project3}".html_safe
    elsif r.max_parter_project2.present?
      "#{r.max_parter_project1}<br />#{r.max_parter_project2}".html_safe
    else
      r.max_parter_project1.presence
    end
    page10_hours = if r.max_parter_hours.present?
      "#{r.max_parter_hours}小时"
    end

    @name = r.name
    @clerkcode = r.clerkcode

    @tianhua2019 = {
      page2_year: 2020,
      page2_age: years_between_dates(r.firstday),
      page2_day: (Date.today - r.firstday).floor,
      page3_busy_percent: page3_busy_percent,
      page3_busy_month: page3_busy_month,
      page3_busy_workday: page3_busy_workday,
      page3_filling_rate: page3_filling_rate,
      page3_max_month_unit: r.max_month_unit,
      page4_project_num: r.prjno,
      page4_project_owner: r.max_serve_client,
      page4_project_name: r.max_projectname,
      page4_work_day: r.max_workdays,
      page5_complete_area: page5_complete_area,
      page5_football_num: ((r.prj_area||0)/137.5).to_i,
      page5_working_city: r.work_place,
      page5_hometown: r.home_town,
      page6_course_num: r.learn_course,
      page6_course_hour: r.study_hours&.to_i,
      page6_course_percent: page6_course_percent,
      page7_award: r.micro_course,
      page8_my_students: r.student_no,
      page8_my_course: r.pop_course,
      page8_my_attendance: r.learn_times&.to_i,
      page9_nickname: 'Sky Walker',
      page9_plugin_name: r.skywalker,
      page10_name: r.max_parter_name,
      page10_project_name: page10_project_name,
      page10_hours: page10_hours,
      page11_name: r.old_folk,
      page12_name: r.teacher,
      page13_call_count: r.service_times,
      page14_mobile_rate: "90%",
      page14_ai_tools_count: 25,
      page14_ai_tools_major: r.major,
      page14_ai_tools_name: r.best_addin
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
    ((date_to - date_from) / 365).ceil + 1
  end

  def max_workday(max_key)
    return '周四' unless max_key.present?
    {
      Monday: '周一',
      Tuesday: '周二',
      Wednesday: '周三',
      Thursday: '周四',
      Friday: '周五',
    }[max_key.to_sym]
  end
end
