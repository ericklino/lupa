// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
<<<<<<< HEAD
// compiled file. JavaScript code in this file should be added after the last require_* statement.
=======
// compiled file.
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
<<<<<<< HEAD
//= require alert_message
//= require jquery_ujs
//= require owl.carousel2
//= require mask
//= require_tree ./scripts
//= require turbolinks

document.addEventListener('turbolinks:load', function() {
  // link
  _link.back(
    $('.link--back')
  );

  _link.current(
    'link--current'
  );

  _link.prevent(
    $('.link--prevent')
  );

  // owl
  _owl.slide(
    $('.slide')
  );

  // nav
  _nav.open(
    $('html'),
    $('.nav'),
    $('.nav__link'),
    $('.nav__btn'),
    'nav--opened'bootstrap-wysihtml5-rails
  );

  // mask
  $('.mask--phone').keydown(function() {
    try {
    	$(this).unmask();
    } catch (e) {}

    if($(this).val().length < 10){
      $(this).mask('(00) 0000-0000');
    } else {
      $(this).mask('(00) 0000-00009');
    }
  });
});
=======
//= require jquery_ujs
//= require alert_message
//= require turbolinks
//= require_tree .
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
