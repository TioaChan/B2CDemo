	$(".tab_2").css("display", "block");
	$(".tab_2").siblings().css("display", "none");
	$(function () {
		$("#product-body .tab_box_aa li").hover(function () {
			var clz = $(this).attr("class");
			clz = clz.substr(5, 1);
			var i = parseInt(clz) + 1;
			$(this).addClass("on").siblings().removeClass("on");
			$(".left-tab_" + String(i)).css("display", "block");
			$(".left-tab_" + String(i)).siblings().css("display", "none");
		});

		$("#product-body .floor_tab_bang .tab_aa li").hover(function () {
			var clz = $(this).attr("class");
			clz = clz.substr(5, 1);
			var i = parseInt(clz) + 1;
			$(this).addClass("on").siblings().removeClass("on");
			$(".floor_tab_bang .tab_" + String(i)).css("display", "block");
			$(".floor_tab_bang .tab_" + String(i)).siblings().css("display", "none");
		});

		$("#product-body .list_ab .bar").hover(function () {
			var clz = $(this).attr("class");
			clz = clz.substr(4, 2);
			$(this).addClass("hidden");
			$(this).siblings().removeClass("hidden");
			$(this).next().attr("style", "display:list-item;");
			$(this).next().siblings(".item").css("display", "none");

		});
	});