/**
 * 
 */
function getParameter(name) { 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null;
}

function messageRecords(){
	var total = 0;
	var urlStr = "fetchMessageCount?admin";
	$.ajax({
		type:"POST",
		url : urlStr,
		dataType : 'json',
		success : function(obj) {
			total=obj;
	    },
		async : false
	});
	return total;
}
//init
$(function(){
	var totalPage = 0;
	var per = 5;
	var totalRecords = messageRecords();
	totalPage = totalRecords/per;
	if(totalRecords%per != 0){
		totalPage += 1;
	}
	var pageNo = getParameter('pno');
	if(!pageNo){
		pageNo = 1;
	}
	
	kkpager.generPageHtml({
		pno : pageNo,
		total : totalPage,
		totalRecords : totalRecords,
		hrefFormer : 'message?admin',
		hrefLatter : '',
		getLink : function(n){
			return this.hrefFormer + this.hrefLatter + "&pno="+n;
		}
	});
});