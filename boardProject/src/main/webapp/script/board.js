function boardCheck() {
	if (document.frm.name.value.length == 0) {
		alert("작성자를 입력하세요.");
		return false;
	}
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if (document.frm.title.value.length == 0) {
		alert("제목을 입력하세요.");
		return false;
	}
	return true;
}

function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
	//팝업창을 띄워서 URL의 요청 페이지를 팝업창에 출력 해준다.
	//함수 호출시 파라미터 update, delete는 name으로 받아서 팝업창 이름으로 사용하고 있다.
}

function passCheck() {
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}