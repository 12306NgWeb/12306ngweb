// JavaScript Document
$.fn.extend({
	// Tabs 插件名称
	oTabs: function(options) {
		// 默认值
		var defaults = {
			dft: 0,
			// 默认起始显示序列
			act: "click" // 默认鼠标件事
		};
		// 合并 defaults 和 options 修改并返回 defaults
		var options = $.extend(defaults, options);
 
		// this 指通过当前选择器获取的 jQuery 对象
		// 选项卡标签
		var tag = $(".tags > li", this);
		// 选项卡内容
		var pane = $(".panes > div", this);
 
		// 起始显示标签
		tag.eq(options.dft).addClass("current");
		// 起始显示内容
		pane.eq(options.dft).show().siblings().hide();
 
		// 选项卡切换方法
		function fnTabs() {
			$(this).addClass("current").siblings().removeClass("current");
			pane.eq($(this).index()).show().siblings().hide();
			return false;
		};
 
		// 判断是否鼠标划过，默认为鼠标点击
		if (options.act == "mouseover") {
			tag.mouseover(fnTabs);
			tag.click(function() {
				return false;
			});
		} else {
			tag.click(fnTabs);
		}
	}
});
