//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  //$('.modal-trigger').leanModal();
  $(".button-collapse").sideNav();
  $('.scrollspy').scrollSpy();
  $('.parallax').parallax();
    $('.slider').slider({full_width: true});
  //for btn animate the btn
  $("btn").click(function() {
      $('html,body').animate({
          scrollTop: $("#services").offset().top},
          'slow');
  });
});

// ===== Scroll to Top ====
$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});
