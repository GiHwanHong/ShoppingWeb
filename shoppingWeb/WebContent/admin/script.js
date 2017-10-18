function Update(mem_id){
	document.update.mem_id.value=mem_id;
	document.update.submit();
}
function zipChech(){
	url="../ZipCheck.jsp?check=y";
	window.open(url,"post","toolbar=no, width=500 , height=300, directories=no, status=yes,scrollbars=yes,menubar=no");
}

// product

function productDetail(no){
	document.detail.no.value=no;
	document.detail.submit();
}
function productDelete(no){
	doocument.del.no.value = no;
	doocument.del.submit();
}
function productUpdate(no){
	doocument.update.no.value=no;
	doocument.update.submit();
}

// order

function orderDetail(no){
	doocument.detail.no.value=no;
	doocument.detail.submit();
}
function orderUpdate(form){
	form.flag.value ="update";
	form.submit();
	
}
function orderDelete(form){
	form.flag.value="delete";
	form.submit();
}