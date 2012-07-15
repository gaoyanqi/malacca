$(function() {
	$("#container").imagesLoaded(function() {
		$("#container").masonry({
			itemSelector: ".item"
		});
	});
});

$(document).ready(function(){
	$("#container > div.item > span").each(function() {
		$(this).hide();
	});
	$("#container > div.item").bind("mouseenter mouseleave", function() {
		$("span", this).slideToggle();
	})
});