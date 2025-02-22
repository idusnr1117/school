<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String custno = request.getParameter("custno");

	String sql = " select custno, custname, phone, address, "
			+ " to_char(joindate, 'yyyy-mm-dd') joindate, "
			+ " case when grade ='A' then 'VIP' "
			+ " 	when grade ='B' then '일반' "
			+ " 	else '직원' end grade, city "
			+ " from member_tbl_02 "
			+ " where custno = ?";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, custno);
    rs = pstmt.executeQuery();
    
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쇼핑몰 회원관리</title>
<link rel="stylesheet" href="css/style.css?ver=1.1.1">
</head>
<body>
	
	<header>
        <jsp:include page="layout/header.jsp"></jsp:include>
    </header>
    
    <nav>
        <jsp:include page="layout/nav.jsp"></jsp:include>
    </nav>
	<main id="section">
    	<h3 class="title">홈쇼핑 회원 정보 조회</h3>
    	<div class="scroll">
    		<table class="table_line">
    		<% if(rs.next())
    		{
    		%>
    			<tr>
                    <th>회원번호</th>
                    <td><%= rs.getString("custno") %></td>
                </tr>
                <tr>
                    <th>회원성명</th>
                    <td><%= rs.getString("custname") %></td>
                </tr>
                <tr>
                    <th>회원전화</th>
                    <td><%= rs.getString("phone") %></td>
                </tr>
                <tr>
                    <th>회원주소</th>
                    <td><%= rs.getString("address") %></td>
                </tr>
                <tr>
                    <th>가입일자</th>
                    <td><%= rs.getString("joindate") %></td>
                </tr>
                <tr>
                    <th>고객등급</th>
                    <td><%= rs.getString("grade") %></td>
                </tr>
                <tr>
                    <th>도시코드</th>
                    <td><%= rs.getString("city") %></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="button" value="취소 후 다시 조회" onclick="document.location.href='z_input.jsp'">
                        <input type="button" value="회원목록조회/수정" onclick="parent.location.href='member_list.jsp'">
                    </td>
                </tr>
    		<% 
    		}
    		else
    		{
    		%>
	            <tr>
	                <th>회원번호입력</th>
	                <td><%= request.getParameter("custno") %> 등록된 자료가 없습니다.</td>
	            </tr>
	            <tr>
	                <td colspan="2" align="center">
	                    <input type="button" value="취소 후 다시 조회" onclick="document.location.href='z_input.jsp'">
	                    <input type="button" value="회원목록조회/수정" onclick="parent.location.href='member_list.jsp'">
	                </td>
	            </tr>
    		<%	
    		}
    		%>
    		
    		</table>
    	</div>
    </main>
    <footer>
        <jsp:include page="layout/footer.jsp"></jsp:include>
    </footer>
</body>
</html>