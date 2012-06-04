var G = {};
$(document).ready(function() {
	var canvas = $("#canvas_1");
	G.canvas = canvas;
	var div_img = $("#div_img");
	var canvasWidth = canvas.width();
	var canvasHeight = canvas.height();
	var context = canvas[0].getContext("2d");
	context.clearRect(0, 0, canvasWidth, canvasHeight);
	var img = new Image();
	img.src = "images/malacca.jpg";
	img.onload = function() {
		context.drawImage(img, 0, 0, canvasWidth, canvasHeight);
	}
	canvas.bind("click", function() {
		var imgData = this.toDataURL();
		console.log(imgData);
		var img = new Image();
		img.src = imgData;
		$("#div_img").append(img);
	});
});