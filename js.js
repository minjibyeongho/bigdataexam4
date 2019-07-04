/**
 * 
 */

function check(){
	var id = document.getElementById("id").value;
	var title = document.getElementById("title").value;
	var detail = document.getElementById("detail").value;
	var price = document.getElementById("price").value;
	
	var form = document.getElementById("form");
	console.log(id+title+detail+price);
	
	if(!id){
		alert("아이디를 입력해주세요!")
		return
	}
	if(!title){
		alert("상품제목을 입력해주세요!")
		return
	}
	if(!detail){
		alert("상품설명을 입력해주세요!")
		return
	}
	if(!price){
		alert("가격을 입력해주세요!")
		return
	}
	
	
	form.submit();
}

