$(function() {
	$("#container").imagesLoaded(function() {
		$("#container").masonry({
			itemSelector: ".item"
		});
	});
});

$(document).ready(function(){
	$("#container > div.item > span").each(function() {
		$(this).show();
	});
	$("#container > div.item").bind("mouseenter mouseleave", function() {
		//$("span", this).slideToggle();
	})
});