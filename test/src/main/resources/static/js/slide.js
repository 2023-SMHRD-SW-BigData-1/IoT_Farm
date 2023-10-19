$(document).on('mouseover', '.header_menu a', function() {
    $('.header_sub_menu_wrap').slideDown(300);
    $('.sub_menu').slideDown(300);
    $('.header_sub_menu_wrap').css('background','#f6f6f6');
});
$(document).on('mouseover','#main',function () {
    if (!$(this).hasClass('header_menu')) {
        $('.header_sub_menu_wrap').slideUp(300);
        $('.sub_menu').slideUp(300);
    }
});
$(document).on('mouseover','#sub01_main',function () {
    if (!$(this).hasClass('header_menu')) {
        $('.header_sub_menu_wrap').slideUp(300);
        $('.sub_menu').slideUp(300);
    }
});

$(document).on('mouseover','#sub_main',function () {
    if (!$(this).hasClass('header_menu')) {
        $('.header_sub_menu_wrap').slideUp(300);
        $('.sub_menu').slideUp(300);
    }
});

$(document).on('mouseover','#sub_main2',function () {
    if (!$(this).hasClass('header_menu')) {
        $('.header_sub_menu_wrap').slideUp(300);
        $('.sub_menu').slideUp(300);
    }
});

$(document).ready(function(){
var swiper = new Swiper(".main_swiper", {
    direction: "vertical",
    slidesPerView: 3,
    spaceBetween: 10,
    loop : true,
	allowTouchMove : false,
	centeredSlides: true,
	
	navigation: {
	nextEl: ".btn_right",
	prevEl: ".btn_left",
        },
    on: {
    slideChange: function () {
    
      $(".text").removeClass("active");
      $(".text").eq(this.realIndex).addClass("active");
    }
  }
});

var swiper = new Swiper(".sub_swiper_1", {
		effect: "fade",
        direction: "vertical",
        mousewheel: false,
        loop:true,
        allowTouchMove : false,
        
        navigation: {
          nextEl: ".btn_right",
          prevEl: ".btn_left",
        },
      });
      
var swiper = new Swiper(".sub_swiper_2", {
		effect: "fade",
        direction: "vertical",
        mousewheel: false,
        loop:true,
        allowTouchMove : false,
        
        navigation: {
          nextEl: ".btn_right",
          prevEl: ".btn_left",
        },
      });

var swiper = new Swiper(".sub_swiper_3", {
		effect: "fade",
        direction: "vertical",
        mousewheel: false,
        loop:true,
        allowTouchMove : false,
        
        navigation: {
          nextEl: ".btn_right",
          prevEl: ".btn_left",
        },
      });


var swiper = new Swiper(".swiper_left", {
    loop : true,
	allowTouchMove : false,
	effect : 'fade',
	fadeEffect: { 
	crossFade: true 
	},
	
	
	navigation: {
	nextEl: ".btn_right",
	prevEl: ".btn_left",
        },
});


});