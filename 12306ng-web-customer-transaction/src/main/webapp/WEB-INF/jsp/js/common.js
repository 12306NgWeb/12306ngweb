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
jQuery.fn.customInput = function(){
	$(this).each(function(i){	
		if($(this).is('[type=checkbox],[type=radio]')){
			var input = $(this);
			var label = $('label[for='+input.attr('id')+']');
			if ( input.attr('disabled') == 'disabled' || input.attr('disabled') == 'true') {
				label.addClass('disabled');	
			}
			var inputType = (input.is('[type=checkbox]')) ? 'checkbox' : 'radio';
			$('<div class="custom-'+ inputType +'"></div>').insertBefore(input).append(input, label);
			var allInputs = $('input[name='+input.attr('name')+']');				
			input.bind('updateState', function(){	
				if (input.is(':checked')) {
					if (input.is(':radio')) {				
						allInputs.each(function(){
							$('label[for='+$(this).attr('id')+']').removeClass('checked');
						});		
					};
					label.addClass('checked');
				}
				else { label.removeClass('checked'); }
										
			}).trigger('updateState').click(function(){ 
				$(this).trigger('updateState'); 
			})
		}
	});
};

$(".select_box input").click(function(){
		var thisinput=$(this);
		var thisul=$(this).parent().find("ul");
		if(thisul.css("display")=="none"){
			if(thisul.height()>200){thisul.css({height:"200"+"px","overflow-y":"scroll" })};
			thisul.fadeIn("100");
			thisul.hover(function(){},function(){thisul.fadeOut("100");})
			thisul.find("li").click(function(){thisinput.val($(this).text());thisul.fadeOut("100");}).hover(function(){$(this).addClass("hover");},function(){$(this).removeClass("hover");});
			}
		else{
			thisul.fadeOut("fast");
			}
	})