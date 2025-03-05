$(document).ready(function () {
  //ShowHide in Mobile
  $('.AMobileHide').click(function () { $(".MobileShowHide").slideToggle(); });

  // sticky-menu
  $(window).scroll(function () {
    if ($(window).scrollTop() > 20) {
      $(".scroll-menu").addClass('sticky');
    } else {
      $(".scroll-menu").removeClass('sticky');
    }
  });

  //BackToTop
  $(document).ready(function () {
    $(window).scroll(function () {
      if ($(this).scrollTop() > 50) {
        $('#back_to_top').fadeIn();
      } else {
        $('#back_to_top').fadeOut();
      }
    });
    // scroll body to 0px on click
    $('#back_to_top').click(function () {
      $('#back-to-top').tooltip('hide');
      $('body,html').animate({
        scrollTop: 0
      }, 800);
      return false;
    });

    $('#back_to_top').tooltip('show');

  });
});

// back-to
var btn = $('#button');

$(window).scroll(function () {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});

btn.on('click', function (e) {
  e.preventDefault();
  $('html, body').animate({ scrollTop: 0 }, '300');
});



//Sticky

// Sticky Header
window.onscroll = function () { myFunction() };

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

var header2 = document.getElementById("myHeader2");
var sticky2 = header.offsetTop;


function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
  if (window.pageYOffset > sticky2) {
    header2.classList.add("sticky2");
  } else {
    header2.classList.remove("sticky2");
  }
}

//Search
$(".menu-search").click(function (event) {
  event.preventDefault();
  $(".search_block").toggle("show hide");
});
$('a.close-search').click(function (e) {
  e.preventDefault();
  $(".search_block").toggle("show hide");
});

$('.menu-left').click(function (e) {
  e.preventDefault();
  $(".MobileMenu, .menu-left i").toggleClass("show hide");
  $('body, .most_last_news_details, .most_read_details').toggleClass('no-scrollbar');
});


// search-top-js
$(document).ready(function () {

  $(".fa-search").click(function () {
    $(".search-box").toggle();
    $("input[type='text']").focus();
  });

});

 $(document).ready(function(){
  $(".Exit").click(function(){
		$(".T4Tutorials").hide();
	 })
})