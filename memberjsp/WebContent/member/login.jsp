<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.dao.MemberDAO"%>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

MemberDAO dao=MemberDAO.getInstance();
String name=dao.login(id, pwd);

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(name==null){ %>
	아이디 또는 비밀번호를 확인하세요<br><br>
	<input type="button" value="돌아가기" onclick="javascript:history.back()">
<%}
else{ %>
	<%=name %>님이 로그인했습니다
<%} %>
</body>
</html>