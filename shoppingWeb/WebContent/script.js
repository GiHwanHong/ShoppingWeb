// 나중에 회원가입 관련 함수들과 합칠것 
	function productDetail(no){
		document.detail.no.value=no;
		document.detail.submit();
	}
	function cartUpdate(form){
		form.flag.value="update"
		form.submit();
	}
	function cartDelete(no){
		form.flag.value="del"
		form.submit();
	}