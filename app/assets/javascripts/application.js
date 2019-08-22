// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require activestorage
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require simditor
//= require cable
//= require admin/infos
//= require blackapp

document.addEventListener("turbolinks:load", function() {

  $('#carouselFade').carousel();
  $('#carousel-fade-mobile').carousel();

  //Tooltips 激活
  $("[data-toggle='tooltip']").tooltip();

  var timeout;
  $(".hoverCard").hover(function() {
      var that = $(this);
      if (!timeout) {
        timeout = window.setTimeout(function() {
          timeout = null;
          that.find('p').animate({
            top: '49%',
          });
        }, 100);
      }
    },
    function() {
      if (timeout) {
        window.clearTimeout(timeout);
        timeout = null;
      } else {
        $(this).find('p').animate({
          top: '80%',
        });
      }
    });

  $(".hoverCard-d").hover(function() {
      var that = $(this);
      if (!timeout) {
        timeout = window.setTimeout(function() {
          timeout = null;
          that.find('p').animate({
            top: '20%',
          });
        }, 100);
      }
    },

    function() {
      if (timeout) {
        window.clearTimeout(timeout);
        timeout = null;
      } else {
        $(this).children().animate({
          top: '82%',
        });
      }
    });

  $(".hoverCard-d p").css('top', '82%');

  $('[data-rel=popover]').popover({
    html: true,
    trigger: "hover"
  });

  $(".imgbox").hover(function() {
    $(".img-text", this).slideToggle(220);
  });

});
