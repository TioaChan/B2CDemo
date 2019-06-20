	$(function () {
		$("#banner-left-arrow,#banner-right-arrow,#banner-small-left-arrow,#banner-small-right-arrow").css("display", "none");
		$("#banner-modal").hover(function () {
			$("#banner-left-arrow,#banner-right-arrow").css("display", "block");
		}, function () {
			$("#banner-left-arrow,#banner-right-arrow").css("display", "none");
		});

		$("#banner-small-modal").hover(function () {
			$("#banner-small-left-arrow,#banner-small-right-arrow").css("display", "block");
		}, function () {
			$("#banner-small-left-arrow,#banner-small-right-arrow").css("display", "none");
		});


		$(".footer_goods_detail").hover(function () {
			$(this).find(".book_price").slideDown();
		}, function () {
			$(this).find(".book_price").stop(true, false).slideUp();
		});
		$("#notice .tabh_0").hover(
			function () {
				$(this).removeClass("first");
				$(this).addClass("on");
				$("#notice .tabh_1").removeClass("on");
				$("#notice .tab_1").show();
				$("#notice .tab_2").hide();
			}
		);
		$("#notice .tabh_1").hover(
			function () {
				$(this).removeClass("first");
				$(this).addClass("on");
				$("#notice .tabh_0").removeClass("on");
				$("#notice .tab_2").show();
				$("#notice .tab_1").hide();
			}
		);
	});