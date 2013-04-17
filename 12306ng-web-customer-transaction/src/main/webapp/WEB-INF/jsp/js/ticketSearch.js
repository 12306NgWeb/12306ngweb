$.extend( {
	getresult : function(startDate) {

		//var pageUrl = window.location.pathname;
		var serverURL ="http://localhost:9090/ngweb/ticket/list" ;
		//var appName = $("meta[http-equiv='appName']").attr("content");
		//var featureName = $("meta[http-equiv='featureName']").attr("content");
		
		$.post(serverURL,
				{
					date : startDate,
				},

		function(data) {

			// currently do nothing in callback..
					alert("success");
			});

	}

});

