// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .
$(function() {
  $('.to-do-complete').on("click", function() {
    var checked;
    var val = $(this).prevAll(".rails-id").val();
    if ($(this).is(':checked')) {
      checked = true;
    } else {
      checked = false;
    }
    $.ajax({
      type: "PATCH",
      url: "/to_dos/" + val,
      data: {complete: checked}
   });
  })
});

$(function() {
  $("#todos-search input").keyup(function() {
    $.ajax({
      type: "GET",
      url: "/to_dos"
      data: {search: search}
    });


$('#new-todo').on("click", function() {('new-todo').hide})
