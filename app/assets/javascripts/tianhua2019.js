function showOrSkipNextSceneGlobal(hypeDocument) {
  var currentScene = hypeDocument.currentSceneName();
  console.log(currentScene);
  switch (currentScene) {
    case '工龄页':
      if (tianhua2019.page3_filling_rate) {
        hypeDocument.showSceneNamed('忙碌时间页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page4_project_num) {
        hypeDocument.showSceneNamed('参与项目统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page5_football_num) {
        hypeDocument.showSceneNamed('参与项目面积页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page6_course_num) {
        hypeDocument.showSceneNamed('参加课程页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page7_award) {
        hypeDocument.showSceneNamed('微课大赛获奖页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page8_my_students) {
        hypeDocument.showSceneNamed('微课大赛统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '忙碌时间页':
      if (tianhua2019.page4_project_num) {
        hypeDocument.showSceneNamed('参与项目统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page5_football_num) {
        hypeDocument.showSceneNamed('参与项目面积页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page6_course_num) {
        hypeDocument.showSceneNamed('参加课程页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page7_award) {
        hypeDocument.showSceneNamed('微课大赛获奖页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page8_my_students) {
        hypeDocument.showSceneNamed('微课大赛统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '参与项目统计页':
      if (tianhua2019.page5_football_num) {
        hypeDocument.showSceneNamed('参与项目面积页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page6_course_num) {
        hypeDocument.showSceneNamed('参加课程页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page7_award) {
        hypeDocument.showSceneNamed('微课大赛获奖页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page8_my_students) {
        hypeDocument.showSceneNamed('微课大赛统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '参与项目面积页':
      if (tianhua2019.page6_course_num) {
        hypeDocument.showSceneNamed('参加课程页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page7_award) {
        hypeDocument.showSceneNamed('微课大赛获奖页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page8_my_students) {
        hypeDocument.showSceneNamed('微课大赛统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '参加课程页':
      if (tianhua2019.page7_award) {
        hypeDocument.showSceneNamed('微课大赛获奖页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page8_my_students) {
        hypeDocument.showSceneNamed('微课大赛统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '微课大赛获奖页':
      if (tianhua2019.page8_my_students) {
        hypeDocument.showSceneNamed('微课大赛统计页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '微课大赛统计页':
      if (tianhua2019.page9_nickname) {
        hypeDocument.showSceneNamed('CAD插件页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case 'CAD插件页':
      if (tianhua2019.page10_hours) {
        hypeDocument.showSceneNamed('亲密战友页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '亲密战友页':
      if (tianhua2019.page11_name) {
        hypeDocument.showSceneNamed('结识老乡页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '结识老乡页':
      if (tianhua2019.page12_name) {
        hypeDocument.showSceneNamed('导师页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '导师页':
      if(tianhua2019.page13_call_count) {
        hypeDocument.showSceneNamed('7777页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showSceneNamed('IT成就页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
    case '7777页':
      hypeDocument.showNextScene(hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      break;
    case 'IT成就页':
      hypeDocument.showNextScene(hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      break;
    default:
      if(false) {
        hypeDocument.showSceneNamed('结束页', hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      } else {
        hypeDocument.showNextScene(hypeDocument.kSceneTransitionPushBottomToTop, 1.1);
      }
      break;
  }
}

function setElementGlobal(hypeDocument) {
  function setElement(element_id, content, hypeDocument) {
      var element = hypeDocument.getElementById(element_id)
      if(element) {
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

  setElement('page5-complete-area', tianhua2019.page5_complete_area, hypeDocument);
  setElement('page5-football-num', tianhua2019.page5_football_num, hypeDocument);
  setElement('page5-working-city', tianhua2019.page5_working_city, hypeDocument);
  setElement('page5-hometown', tianhua2019.page5_hometown, hypeDocument);

  setElement('page6-course-num', tianhua2019.page6_course_num, hypeDocument);
  setElement('page6-course-hour', tianhua2019.page6_course_hour, hypeDocument);
  setElement('page6-course-percent', tianhua2019.page6_course_percent, hypeDocument);

  setElement('page7-award', tianhua2019.page7_award, hypeDocument);

  setElement('page8-my-students', tianhua2019.page8_my_students, hypeDocument);
  setElement('page8-my-course', tianhua2019.page8_my_course, hypeDocument);
  setElement('page8-my-attendance', tianhua2019.page8_my_attendance, hypeDocument);

  setElement('page9-nickname', tianhua2019.page9_nickname, hypeDocument);
  setElement('page9-plugin-name', tianhua2019.page9_plugin_name, hypeDocument);

  setElement('page10-name', tianhua2019.page10_name, hypeDocument);
  setElement('page10-project-name', tianhua2019.page10_project_name, hypeDocument);
  setElement('page10-hours', tianhua2019.page10_hours, hypeDocument);

  setElement('page11-name', tianhua2019.page11_name, hypeDocument);

  setElement('page12-name', tianhua2019.page12_name, hypeDocument);

  setElement('page13-call-count', tianhua2019.page13_call_count, hypeDocument);

  setElement('page14-mobile-rate', tianhua2019.page14_mobile_rate, hypeDocument);
  setElement('page14-ai-tools-count', tianhua2019.page14_ai_tools_count, hypeDocument);
  setElement('page14-ai-tools-major', tianhua2019.page14_ai_tools_major, hypeDocument);
  setElement('page14-ai-tools-name', tianhua2019.page14_ai_tools_name, hypeDocument);
}
