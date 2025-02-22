<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h2 class="title">학사관리 프로그램 작성 안내 (CRUD)</h2>
		<p>
		데이터 입출력 요건에 맞게 학생정보, 학생성적 테이블을 작성하고 성적을 입력/조회를 작성하는 프로그램이다.<br>
		프로그램 작성 순서<br>
		<strong>
		1. 주어진 테이블 정보를 생성한다.<br>
		2. 문제에 제시된 기본 데이터를 일괄 입력한다.<br>
		3. 학생목록 화면은</strong> - 학년, 반, 번호는 학번을 이용하여 화면에 나타나도록 한다.(10101 -> 학년:1, 반:01, 번호:01)<br>
		&nbsp;- 성별은 'M'이면 '남', 'F'이면 '여'로 화면에 나타나도록 한다.<br>
		<strong>4. 성적입력 화면은</strong><br>
		&nbsp;- 모든 항목의 정보를 채우고 '등록하기' 버튼을 클릭하면 학생성적이 '학생성적 테이블'에 저장된다.
		&nbsp;- 학생번호 항목의 값이 입력되어 있지 않은 경우에<br>
		&nbsp;&nbsp;&nbsp;'등록하기' 버튼을 클릭하면 '학생번호가 입력되지 않았습니다.'라는 알림창이 화면에 나타나고 포커스가 학생번호 항목으로 이동된다.<br>
		&nbsp;- 모든 항목에 대해 데이터 유효성 체크를 실시하며,<br>
		&nbsp;&nbsp;&nbsp; 유효성 체크에서 통과하지 못하면 각 항목 별 알림창 화면이 나타난다.<br>
		&nbsp;-모든 항목을 입력한 후 등록 버튼을 누르면<br>
		&nbsp;&nbsp;&nbsp;'학생 성적이 모두 입력되었습니다.'라는 알림창과 함께 데이터베이스 성적정보 테이블에 저장된다.<br>
		<strong>5. 학생성적 화면은</strong>  - '학생성적' 메뉴를 클릭하면 모든 학생들의 정보이 조회된다.<br>
		&nbsp;- 두 테이블의 데이터를 참조하여 아래 그림과 같은 조회 결과를 나타낼 수 있어야 한다.<br>
		&nbsp;- 조회순서는 성적이 높은 학생 순으로 조회된다.<br>
		&nbsp;- 아직 성적이 입력되지 않은 학생도 조회목록에 나타나도록 한다.<br>
		</p>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>