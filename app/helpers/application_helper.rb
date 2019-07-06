module ApplicationHelper

  def full_title(page_title = '')
    base_title = "天华建筑设计公司官网"
    if page_title.empty?
      base_title
    else
      page_title + " - " + base_title
    end
  end

  def full_category(category)
    if category.to_i == 1
      '管理团队'
    else
      '专业团队'
    end
  end

  def news_category(category)
    if category.to_i == 1
      '公司新闻'
    elsif category.to_i == 2
      '行业会议'
    else category.to_i == 3
      '专业奖项'
    end
  end

  def case_market(market)
    if market.to_i == 1
      '居住建筑'
    elsif market.to_i == 2
      '商业建筑'
    elsif market.to_i == 3
      '办公建筑'
    elsif market.to_i == 4
      '文教体卫'
    elsif market.to_i == 5
      '城市更新'
    else market.to_i == 6
      '旅游度假'
    end
  end

  def case_professional(professional)
    if professional.to_i == 1
      '建筑'
    elsif professional.to_i == 2
      '规划'
    elsif professional.to_i == 3
      '室内'
    else professional.to_i == 4
      '景观'
    end
  end

  def person_title(title)
    titles = title.split("\r\n")
    first_two_titles = [titles[0],titles[1]].join("\r\n")
    if titles.length > 2
      simple_format first_two_titles + "\r\n……"
    else
      simple_format first_two_titles
    end
  end
end

