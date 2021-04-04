function callAjax(tUrl, ctype, param, returnType) {
		
		switch (returnType) {
			case 'msg' :
				$.ajax({
		            url : tUrl,
		            type : ctype,
		            data : param,
		            dataType : 'json',
		            success : function(data){
		         	 	alert(data.msg);
		            }
		         });
				break;
				
			case 'data' :
				var returnData;
				
				$.ajax({
		            url : tUrl,
		            type : ctype,
		            data : param,
		            dataType : 'json',
		            async : false,
		            success : function(data){
		         	 	returnData = data;
		            }
		         });
				return returnData;
				break;
		}
	}