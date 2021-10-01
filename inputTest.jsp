<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

//----------------------------------------------------- //
// 이메일 형식이 아니면 공백처리
var replaceEmail = /[^0-9a-z@.]/gi;

$(document).ready(function(){
    
    $("#inputEmail").on("focusout", function() {
        var x = $(this).val();
        if (x.length > 0) {
            if (x.match(replaceEmail)) {
               x = x.replace(replaceEmail, "");
            }
            $(this).val(x);
        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replaceEmail, ""));
    });
});

// ----------------------------------------------------- //

    
    // 숫자가 아닌 것들은 ""공백처리
    var replaceNotInt = /[^0-9]/gi;
    
    $(document).ready(function(){
        
        $("#inputPhone").on("focusout", function() {
            var x = $(this).val();
            if (x.length > 0) {
                if (x.match(replaceNotInt)) {
                   x = x.replace(replaceNotInt, "");
                }
                $(this).val(x);
            }
        }).on("keyup", function() {
            $(this).val($(this).val().replace(replaceNotInt, ""));
        });
 
    });
 
// -------------------------한글만----------------------------- //

    // 특수문자, 영어, 숫자, 한글미완성은 ""공백으로 replace해서  return
    var replaceChar = /[ㄱ-ㅎㅏ-ㅣ]|[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/gi;
 
        $(document).ready(function(){
        
        $("#inputName").on("focusout", function() {
            var x = $(this).val();
            if (x.length > 0) {
                if (x.match(replaceChar)) {
                    x = x.replace(replaceChar, "");
                }
                $(this).val(x);
            }
            }).on("keyup", function() {
                $(this).val($(this).val().replace(replaceChar, ""));
       });
    });      
    
 // ------------------------------------------------------ //  
    // 영어만 입력가능 그외 ""값으로 return
    var replaceNotEng = /[^A-Z]/gi;
    
    $(document).ready(function(){
        
        $("#inputENAME").on("focusout", function() {
            var x = $(this).val();
            if (x.length > 0) {
                if (x.match(replaceNotEng)) {
                   x = x.replace(replaceNotEng, "");
                }
                $(this).val(x);
            }
        }).on("keyup", function() {
            $(this).val($(this).val().replace(replaceNotEng, ""));
        });
 
    });
    

</script>
</head>
<body>
	
이메일<input type="text" id="inputEmail" maxlength="20" /><br>
<hr>
숫자만(휴대전화)<input type="text" id="inputPhone" maxlength="9" /><br>
<hr>
한글만(한글이름)<input type="text" id="inputName" maxlength="10" />
<br>
<hr>
영어대문자만<input type="text" id="inputENAME" maxlength="10" style="text-transform: uppercase;" >





</body>
</html>