/** 작성일 : 2023/03/28 
*/
function check() {
	//name속성을 이용해 DOM을 선택시 document.name속성값, name속성값(계층에 따라 사용한다.)
	if(document.frm.id.value == "") { //value는 입력 값 속성
		alert("아이디를 입력");
		document.frm.id.focus(); //focus 속성을 주기
		return false;
	} else if (document.frm.age.value == "") {
		alert("나이를 입력")
		document.frm.age.focus();
		return false;
	} else if(isNaN(document.frm.age.value)) {
		alert("숫자로 입력해라");
		document.frm.age.focus();
		return false;
	} else {
		return true;
	}
}