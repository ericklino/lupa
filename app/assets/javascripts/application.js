// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require alert_message
//= require jquery_ujs
//= require owl.carousel2
//= require mask
//= require perfect-scrollbar
//= require jquery-ui/accordion
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

  _owl.slide(
    $('.fc-slide')
  );

  _owl.slide(
    $('.page__gallery')
  );

  // nav
  _nav.open(
    $('html'),
    $('.nav'),
    $('.nav__link'),
    $('.nav__btn'),
    'nav--opened'
  );

  // galleria
  var gallery = $('.gallery');

  if(gallery.length) {
    Galleria.loadTheme('/galleria/themes/classic/galleria.classic.js');
    Galleria.run('.gallery');
  }

  // accordion
  var accordion = $('.accordion');

  if(accordion.length) {
    accordion.accordion({
      heightStyle: 'content'
    });
  }

  // scrollbar
  $('.services__list--scroll').perfectScrollbar();

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
