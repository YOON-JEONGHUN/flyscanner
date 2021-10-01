<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/coupon.css">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

// 버튼 클릭시 이미 생성 및 임의의 숫자배열 생성
$(document).ready(function() {
	$('#coupon').click(function() {
var image = new Array();
image[0] = "resources/ico/koreaAir.jpg width ='40px' height = '40px'" ;
image[1] = "resources/ico/KL.png width ='40px' height = '40px'";
image[2] = "resources/ico/KL.png width ='40px' height = '40px'";
image[3] = "resources/ico/KL.png width ='40px' height = '40px'";
image[4] = "resources/ico/KL.png width ='40px' height = '40px'";
image[5] = "resources/ico/KL.png width ='40px' height = '40px'";
image[6] = "resources/ico/KL.png width ='40px' height = '40px'";
image[7] = "resources/ico/KL.png width ='40px' height = '40px'";
image[8] = "resources/ico/KL.png width ='40px' height = '40px'";

// 임의의 9개 자리 배열의 값 생성해서 넣음
var arr = new Array(9)
// 랜덤 값을 floor(버림) 하여, 이미지의 length를 곱해서 숫자 생성
arr[0] = Math.floor(Math.random()*8);
arr[1] = Math.floor(Math.random()*8);
arr[2] = Math.floor(Math.random()*8);
arr[3] = Math.floor(Math.random()*8);
arr[4] = Math.floor(Math.random()*8);
arr[5] = Math.floor(Math.random()*8);
arr[6] = Math.floor(Math.random()*8);
arr[7] = Math.floor(Math.random()*8);
arr[8] = Math.floor(Math.random()*8);

var count = 0

// 각 해당하는 영역에 이미지 출력 9번
for (var i = 0; i < 9; i++) {
	// 9개의 랜덤 이미지를 영역에 출력
	$('#coupon9').append("<img src="+image[arr[i]]+">")
	// 해당 이미지가 0번째(당첨) 일 경우 숫자를 카운트 +1 하고 당첨 확인 영역에 이미지 출력 
	if(arr[i] == 0) {
		$('#coupon3').append("<img src="+image[0]+">")
		count += 1
	} else {
		// $('#result2').append("<img src="+image[1]+">")
	}
}
// alert(count) : 당첨되면 개수 알려줌

var suc= "당첨되지 않았습니다. 다음기회에"
// 당첨 개수가 3이상일 시 당첨여부 영역에 표시
if(count >= 3) {
	$('#couponW').html("당첨되었습니다.")	
} else {
	$('#couponW').html(suc)
}
// 버튼 누르고 나면 버튼 숨김
$('#coupon').hide();
// 해당 
document.getElementById('correct').innerHTML= count + "개 당첨";
})
})
</script>
</head>
<body>
	<h1>9개의 이미지중에서 3개이상 일치할 시 할인쿠폰 지급</h1>	<hr>
	<h3>임의의 9개 </h3>
	<span id="coupon9"> </span>	<br><hr>
	<h3>담청된 개수 </h3>
	<span id="coupon3"></span>	<br><hr><br>
	<span id="couponW"> </span>	<br><br><br>
	<button id="coupon">클릭하시오</button> 	<hr>
	<div id="result3" >	<span id="correct"></span>
	</div>
</body>
</html>