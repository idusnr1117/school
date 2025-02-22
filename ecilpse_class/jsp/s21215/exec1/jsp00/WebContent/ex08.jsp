<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check_value()
	{
		var tf = document.test_form;
		if (!tf.kor.value)
		{
			alert("국어 성적을 입력하세요.");
			return false;	
		}
		else if (!tf.inf.value)
		{
			alert("정보 성적을 입력하세요.");
			tf.inf.focus();
			return false;	
		}
		else if (tf.rmk.value == "")
		{
			alert("평가 내용을 입력하세요.");
			tf.rmk.focus();
			return false;	
		}
		else if (tf.rmk.value.length < 4 || tf.rmk.value.length > 12)
		{
			alert("평가는 4자 ~ 12자 내에서 입력하세요.");
			tf.rmk.focus();
			return false;	
		}
	}
</script>
<body>
	<form name="test_form" action="ex08_result.jsp" onsubmit="return check_value()" method="post">
		국어 : <input type="number" name="kor" min="0" max="100" value="0" required><br>
		영어 : <input type="number" name="eng" min="0" max="100" value="0"><br>
		수학 : <input type="number" name="mat" min="0" max="100" value="0"><br>
		정보 : <input type="number" name="inf" min="0" max="100" value="0"><br>
		date : <input type="date" name="t_date"><br>
		datetime-local : <input type="datetime-local" name="t_date_local"><br>
		range : <input type="range" name="r_range" min="10" max="15"><br>
		평가 내용 : <input type="text" name="rmk"><br><br>
		입력 : <input type="submit" value="확인" >
			  <input type="reset" value="재작성" >
	</form>
</body>
</html>
