function setElementGlobal(hypeDocument) {
  function setElement(element_id, content, hypeDocument) {
      var element = hypeDocument.getElementById(element_id)
      if(element) {
        console.log(element);
        element.innerHTML=content;
      }
  }

  setElement('page2-year', tianhua2019.page2_year, hypeDocument);
  setElement('page2-age', tianhua2019.page2_age, hypeDocument);
  setElement('page2-day', tianhua2019.page2_day, hypeDocument);

  setElement('page3-busy-percent', tianhua2019.page3_busy_percent, hypeDocument);
  setElement('page3-busy-month', tianhua2019.page3_busy_month, hypeDocument);
  setElement('page3-busy-workday', tianhua2019.page3_busy_workday, hypeDocument);
  setElement('page3-filling-rate', tianhua2019.page3_filling_rate, hypeDocument);

  setElement('page4-project-num', tianhua2019.page4_project_num, hypeDocument);
  setElement('page4-project-owner', tianhua2019.page4_project_owner, hypeDocument);
  setElement('page4-project-name', tianhua2019.page4_project_name, hypeDocument);
  setElement('page4-work-day', tianhua2019.page4_work_day, hypeDocument);

  setElement('page5-complete-area', '6666平方米', hypeDocument);
  setElement('page5-football-num', 500, hypeDocument);
  setElement('page5-working-city', '北京、上海、深圳、广州', hypeDocument);
  setElement('page5-hometown', '温州', hypeDocument);

  setElement('page6-course-num', 12, hypeDocument);
  setElement('page6-course-hour', 88, hypeDocument);
  setElement('page6-course-percent', '96%', hypeDocument);

  setElement('page7-award', '创新设计奖', hypeDocument);

  setElement('page8-my-students', 6432, hypeDocument);
  setElement('page8-my-course', '现代建筑与近代建筑', hypeDocument);
  setElement('page8-my-attendance', 7654, hypeDocument);

  setElement('page9-nickname', 'Jedi Knight', hypeDocument);
  setElement('page9-plugin-name', '插件2<br />插件名字3', hypeDocument);

  setElement('page10-name', '过纯中', hypeDocument);
  setElement('page10-project-name', '商务智能报表项目', hypeDocument);
  setElement('page10-hours', '4000小时', hypeDocument);

  setElement('page11-name', '王玥', hypeDocument);

  setElement('page12-name', '冯巧容', hypeDocument);

  setElement('page13-call-count', 234, hypeDocument);

  setElement('page14-mobile-rate', '89%', hypeDocument);
  setElement('page14-ai-tools-count', 28, hypeDocument);
  setElement('page14-ai-tools-major', '信息科技专业', hypeDocument);
  setElement('page14-ai-tools-name', '自动对坐标出图工具', hypeDocument);
}
