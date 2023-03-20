// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as jquery from "jquery"
import "semantic-ui"
import "channels"

// Adds auto scroll to bottom in messages
let auto_scroll = function () {
  if ($('#messages').length > 0) {
    $('#messages').scrollTop($('#messages')[0].scrollHeight);
  };
};

// Uses an event to submit and clear input textfield
let submit_button = function () {
  $('#message_body').on('keydown', function (e) {
    if (event.key === 'Enter') {
      $('button').trigger("click"); // Rails 7 already has this feature integrated
      e.target.value = "";
    };
  })
};

$(document).on('turbo:load', function () {
  $('.ui.dropdown').dropdown();
  submit_button();
  auto_scroll();
})
