$(function(){
	$(".selectAll > input").click(function(){
		$(".select > input").prop("checked",this.checked);
	});
});