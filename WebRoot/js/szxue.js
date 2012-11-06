/**
 *@author readkid
 *@dependence jquery 1.2
 *@since 2010/1/15
 *@version 1.0
 *引入easing插件，用户体验佳
 */  
jQuery.easing['jswing'] = jQuery.easing['swing'];
jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	}
});

(function() {
	$.suning || ($.suning = {});
	$.suning.productView = {};
	//继承
	$.suning.productView.extend = function (subClass, superClass) {
		var F = function() {};
		F.prototype = superClass.prototype;
		subClass.prototype = new F();
		superClass.prototype.constructor = superClass;
		subClass.prototype.constructor = subClass;
		subClass.base = superClass.prototype;
	}
})();

//tickcount
$.suning.spiketTime = function(id,startTime, endTime) {
	if (endTime <=0) 
		return;
	var base = $("#"+id).find('span');
	var s1 = base.eq(1);
	var s2 = base.eq(2);
	var s3 = base.eq(3);
	var type = 1;
	
	if (startTime < 0) {
		base.eq(0).html("距离结束时间：")
	
	} else {
			base.eq(0).html("距离开始时间：")
	}
	
	
	function formatTime(t) {
			if (t > 0) {
				var totalSecond = t / 1000;
				var minute = Math.floor(totalSecond / 60);
				var hour = Math.floor(minute / 60);
				minute = minute % 60;
				var second = Math.floor(totalSecond % 60);
				return [hour, minute, second];
				
			} else {
				return [0, 0, 0];
				
			}
	}
	
	function changeType() {
		base.eq(0).html("距离结束时间：")
	}
	
	var timerLeft = function(t, e) {
		var start = (new Date()).getTime();
		
		return {
			getLeft: function() {
				var now = (new Date()).getTime();
				var s = t - (now - start);
				if (s <=0 && type == 1) {
					changeType();
					
					this.getLeft = function() {
						var now = (new Date()).getTime();
						var s = e - (now-start);
						return s;
					}
					return this.getLeft();
				}
				return s;
			},
			render: function() {
				var arr = formatTime(this.getLeft());
				if(arr[0] > 9){
					s1.css('letter-spacing','0');
				}else{
					s1.css('letter-spacing','0');	
				}
				if(arr[1] > 9){
					s2.css('letter-spacing','0');
				}else{
					s2.css('letter-spacing','0');
				}
				if(arr[2] > 9){
					s3.css('letter-spacing','1px');
				}else{
					s3.css('letter-spacing','0');	
				}
				s1.html(arr[0]);
				s2.html(arr[1]);
				s3.html(arr[2])
			}
		}
	};
	
	var tl = timerLeft(startTime, endTime);
	tl.render();
	setInterval(function() {
		tl.render();
	},1000);
}
/* 首页左侧导航 */
function SNmenuNav(){
	$("#SNmenuNav dl").hover(function(){
		$(this).find("dt a").addClass("on");
		$(this).find("dd").show();
		$(this).find("dt b").hide();
	},function(){
		$(this).find("dt a").removeClass("on");
		$(this).find("dd").hide();
		$(this).find("dt b").show();
	})
}




$(function(){
	SNmenuNav();
	//SNTabFlash();	
	//SNpromArea();
	//SNTabchange("SNpromAnnMain","SNpromAnn");   //促销公告
	//SNexpress();
	//SNgroupScroll();
	//SearchFocus()
	//onlineserver($("#onlinefloat"));
	//SNrankingTop("SNrankTop01","SNTop01");
	//SNrankingTop("SNrankTop02","SNTop02");
	//SNrankingTop("SNrankTop03","SNTop03");
	// SNrankingTop("SNrankTop04","SNTop04");
	
	function lazyload(option) {
		var settings = {
			defObj : null,
			defHeight : 0
		};
		settings = $.extend(settings, option || {});
		var defHeight = settings.defHeight, defObj = (typeof settings.defObj == "object") ? settings.defObj
				.find("img")
				: $(settings.defObj).find("img");
		var pageTop = function() {
			var d = document, y = (navigator.userAgent.toLowerCase().match(
					/iPad/i) == "ipad") ? window.pageYOffset : Math.max(
					d.documentElement.scrollTop, d.body.scrollTop);
			return d.documentElement.clientHeight + y - settings.defHeight
		};
		var imgLoad = function() {
			defObj.each(function() {
				if ($(this).offset().top <= pageTop()) {
					var src2 = $(this).attr("src2");
					if (src2) {
						$(this).attr("src", src2).removeAttr("src2")
					}
				}
			})
		};
		$(window).bind("scroll", function() {
			imgLoad()
		})
	}
	;
	lazyload({
		defObj : "#snfoor01"
	});
	lazyload({
		defObj : "#snfoor02"
	});
	lazyload({
		defObj : "#snfoor03"
	});
	lazyload({
		defObj : "#snfoor04"
	});
	lazyload({
		defObj : "#snfoor05"
	});
	lazyload({
		defObj : "#snfoor06"
	});
	lazyload({
		defObj : "#snfoor07"
	});
	lazyload({
		defObj : ".ad80"
	});
})