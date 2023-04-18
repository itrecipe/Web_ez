/**
 * 2023.4.12 by h(feat.kook)
 */
 
function boardCheck(){
	if(document.frm.name.value.length == 0){
		alert("작성자를 입력하세요");
		return false;
	}
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요");
		return false;
	}
	if(document.frm.title.value.length == 0){
		alert("제목을 입력하세요");
		return false;
	}
	return true;
}

function open_win(url, name){
	window.open(url, name, "width=500, height=230");
	//url은 요청 페이지 경로, name은 이창의 이름, 크기
}

function