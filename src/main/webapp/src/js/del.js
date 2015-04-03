//delete message
function deleteMessage(url){
	if(!confirm("确认删除该条客户留言？")){
		return;
	}
	$.ajax({
		url:url,
		success : function(obj) {
			location.reload();
		},
		async : false
	});
}

//delete message
function deleteSubmenu(url){
	if(!confirm("确认删除该条类别信息？")){
		return;
	}
	$.ajax({
		url:url,
		success : function(obj) {
			location.reload();
		},
		async : false
	});
}