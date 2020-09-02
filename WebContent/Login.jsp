<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="Login.do" method="post">
<br><br><br><br>
<h2> 로그인</h2>
<table width=400 border=1>
<tr height=50>
	<td width=200 align="center"><input type="text" name="id" placeholder="아이디 :" size=60></td>
</tr>
<tr height=50>
	<td width=200 align="center"><input type="password" name="password" placeholder="비밀번호 :" size=60></td>
</tr>
<tr height=50>
	<td width=200 align="center">
	<input type="submit" value="로그인">&nbsp;&nbsp;
	<input type="button" onclick="location.href='Join.jsp'" value="회원가입">&nbsp;&nbsp;
	<input type="button" onclick="location.href='BoardListCtrl.do'" value="게시판 바로가기">
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>