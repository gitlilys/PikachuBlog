var className1 = document.getElementsByClassName("article");
//logo部分的特效，鼠标滑过的时候超链接改变颜色,当打开另一个页面时，使用效果
$(function() {
	$("#regist>a").css("color", "#FFD700");
	$("#login>a").css("color", "#FFD700");
	$(".main_container_bottom_right > span > a").css("color", "#EEDD82");

	$("#regist").mouseover(function() {
		$("#regist>a").css("text-decoration", "none");
		$("#regist>a").css("color", "white");
	}).mouseout(function() {
		$("#regist>a").css("color", "#FFD700");
	});
	$("#login").mouseover(function() {
		$("#login>a").css("text-decoration", "none");
		$("#login>a").css("color", "white");
	}).mouseout(function() {
		$("#login>a").css("color", "#FFD700");
	});

	var arr = new Array(1, 2, 3, 4);
	$.each(arr, function(i, n) {
		$("#a" + i).mouseover(function() {
			$("#a" + i).css("text-decoration", "none");
			$("#a" + i).css("color", "cornflowerblue");
		}).mouseout(function() {
			$("#a" + i).css("color", "#EEDD82");
		});
	});
});