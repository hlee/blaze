// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function(){
	$('.menu li a').smoothScroll();
	$(".menu li  a").click(function(){
		$(".menu li a").removeClass('current');
		$(this).addClass('current');
	});

	$('.logout').click(function(){
			window.location.href="/";
	});

	$('.projects img').click(function(){
		window.location.href="/pro/"+$(this).attr('id');
	});

	$('.project-img li img').click(function(){
			$('.project-img li img').removeClass();
			$(this).addClass('act');
			$('.show-box img').attr('src',$(this).attr('src'));
	});
});
