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
    page3_busy_month = max_month(r)
    page3_busy_workday = max_workday(r)

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
      page4_project_num: r.prjno,
      page4_project_owner: r.max_serve_client,
      page4_project_name: r.max_projectname,
      page4_work_day: r.max_workdays,
      page5_complete_area: page5_complete_area,
      page5_football_num: ((r.prj_area||0)/137.5).to_i,
      page5_working_city: r.work_place,
      page5_hometown: r.home_town,
      page6_course_num: r.learn_course,
      page6_course_hour: r.study_hours.to_i,
      page6_course_percent: page6_course_percent,
      page7_award: r.micro_course,
      page8_my_students: 6000,
      page8_my_course: '如何建构一个和谐的大家庭',
      page8_my_attendance: 7888,
      page9_nickname: 'Sky Walker',
      page9_plugin_name: 'X战机<br >蓝色小光剑'.html_safe,
      page10_name: r.max_parter_name,
      page10_project_name: page10_project_name,
      page10_hours: page10_hours,
      page11_name: nil,
      page12_name: r.teacher,
      page13_call_count: nil,
      page14_mobile_rate: "90%",
      page14_ai_tools_count: 25,
      page14_ai_tools_major: '划水专业',
      page14_ai_tools_name: '人工智能画图'
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

  def max_month(r)
    max_key = {
      jan: r.jan,
      feb: r.feb,
      mar: r.mar,
      apr: r.apr,
      may: r.may,
      jun: r.jun,
      jul: r.jul,
      aug: r.aug,
      sep: r.sep,
      oct: r.oct,
      nov: r.nov,
      dec: r.dec
    }.max_by{ |k,v| v||0 }[0]

    {
      jan: '1',
      feb: '2',
      mar: '3',
      apr: '4',
      may: '5',
      jun: '6',
      jul: '7',
      aug: '8',
      sep: '9',
      oct: '10',
      nov: '11',
      dec: '12'
    }[max_key]
  end

  def max_workday(r)
    max_key = {
      monday: r.monday,
      tuesday: r.tuesday,
      wednesday: r.wednesday,
      thursday: r.thursday,
      friday: r.friday,
    }.max_by{ |k,v| v||0 }[0]

    {
      monday: '周一',
      tuesday: '周二',
      wednesday: '周三',
      thursday: '周四',
      friday: '周五',
    }[max_key]
  end
end
