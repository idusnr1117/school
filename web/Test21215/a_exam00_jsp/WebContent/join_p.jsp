<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_conntect.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String sql = "insert into member_tbl_02 values(?, ?, ?, ?, ?, ?, ?)";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1, Integer.parseInt(request.getParameter("custno")));
	pstmt.setString(2, request.getParameter("custname"));
	pstmt.setString(3, request.getParameter("phone"));
	pstmt.setString(4, request.getParameter("address"));
	pstmt.setString(5, request.getParameter("joindate"));
	pstmt.setString(6, request.getParameter("grade"));
	pstmt.setString(7, request.getParameter("city"));
	
	pstmt.executeUpdate();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="join.jsp"></jsp:forward>
</body>
</html>