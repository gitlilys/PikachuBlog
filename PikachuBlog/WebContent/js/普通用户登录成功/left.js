	$(function(){
		var arr = new Array(1,2,3,4);
		var arrj = new Array(1,2,3,4);
		
		$.each(arr,function(i,n){
			var j=1;
			var flag = 0;
			//收缩菜单
			$("#th" + i).click(function(){                                                                              
				if (j==1) {
					$("#th"+i + " > img").attr("src","../../img/u4.png");
					$(".t1 > #tb"+i+ " > ul > li").hide();
					j = 0;
				}else{
					$("#th"+i + " > img").attr("src","../../img/u4_selected.png");
					$(".t1 > #tb"+i+ " > ul > li").show();
					j = 1;
				}
			});
					//功能菜单
//					$.each(arrj,function(j,m){
//						var b = "#tb" + i;
//						var c = b + j;
//						$(c).click(function(){
//							if (flag==0) {
//								$(c).css("background-color","gainsboro");
//								flag = 1;
//							}else{
//								$(c).css("background-color","none");
//								flag = 0;
//							}
//							
//						});
//					});
//					
		});
	});