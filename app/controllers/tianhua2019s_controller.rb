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

    page3a_blank_word = "月是#{r.max_month_unit}"

    page5_complete_area = if r.prj_area.present?
      "#{r.prj_area.to_i}平方米"
    end
    page5a_certificate = if r.certificate.present?
      r.certificate.split(',').reject(&:blank?).join('<br />').html_safe
    end
    page6_course_num = if r.learn_course.present?
      "你今年一共参加了<font face='Avenir, Helvetica, Arial, sans-serif' size='7' color='#ffaa48'><b>#{r.learn_course}</b></font>项课程".html_safe
    end

    page9_plugin_name = if r.skywalker.present?
      r.skywalker.split('/n').join('<br />').html_safe
    end

    page10_project_name_hours = if r.max_parter_project3.present?
      "#{r.max_parter_project1}<br />#{r.max_parter_project2}<br />#{r.max_parter_project3}<br /><div><font color='#396a8d' style='font-weight: normal;'>项目上鏖战了</font><br></div><div><font size='7' face='Avenir, Helvetica, Arial, sans-serif'>#{r.max_parter_hours}</font><font color='#396a8d' style='font-weight: normal;'>小时</font></div>".html_safe
    elsif r.max_parter_project2.present?
      "#{r.max_parter_project1}<br />#{r.max_parter_project2}<br /><div><font color='#396a8d' style='font-weight: normal;'>项目上鏖战了</font><br></div><div><font size='7' face='Avenir, Helvetica, Arial, sans-serif'>#{r.max_parter_hours}</font><font color='#396a8d' style='font-weight: normal;'>小时</font></div>".html_safe
    else
      "#{r.max_parter_project1}<br /><div><font color='#396a8d' style='font-weight: normal;'>项目上鏖战了</font><br></div><div><font size='7' face='Avenir, Helvetica, Arial, sans-serif'>#{r.max_parter_hours}</font><font color='#396a8d' style='font-weight: normal;'>小时</font></div>".html_safe
    end

    page10_hours = if r.max_parter_hours.present?
      "#{r.max_parter_hours}"
    end

    page11_folk_course = if r.old_folk_course.present?
      "是你#{r.old_folk_course}的同学"
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
      page3a_busy_month: page3_busy_month,
      page3a_blank_word: page3a_blank_word,
      page4_project_num: r.prjno,
      page4_project_owner: r.max_serve_client,
      page4_project_name: r.max_projectname,
      page4_work_day: r.max_workdays,
      page5_complete_area: page5_complete_area,
      page5_football_num: ((r.prj_area||0)/137.5).to_i,
      page5_working_city: r.work_place,
      page5_hometown: r.home_town,
      page5a_certificate: page5a_certificate,
      page5b_company: r.upgrade_org,
      page5b_title: r.upgrade_postname,
      page6_course_num: page6_course_num,
      page6_course_hour: r.study_hours&.to_i,
      page7_award: r.micro_course,
      page8_my_students: r.student_no,
      page8_my_course: r.pop_course,
      page8_my_attendance: r.learn_times&.to_i,
      page9_nickname: 'Skywalker',
      page9_plugin_name: page9_plugin_name,
      page10_name: r.max_parter_name,
      page10_project_name_hours: page10_project_name_hours,
      page10_hours: page10_hours,
      page11_name: r.old_folk,
      page11_folk_course: page11_folk_course,
      page11_folk_alumni: r.folk_alumni_sign,
      page12_name: r.teacher,
      page13_call_count: r.service_times,
      page14_ai_tools_count: 26,
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
    ((date_to - date_from) / 365).ceil
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
