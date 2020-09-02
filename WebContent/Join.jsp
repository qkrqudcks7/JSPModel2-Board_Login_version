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
<font size=7><b>회원가입</b></font>
<br><br><br>
<form action="MemberProcCtrl.do">
<table width=1000 border=1>
<tr height=70>
	<td width=250 align="center">아이디</td>
	<td width=650 align="center"><input type="text" name="id" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">비밀번호</td>
	<td width=650 align="center"><input type="password" name="password" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">비밀번호 확인</td>
	<td width=650 align="center"><input type="password" name="password2" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">이메일</td>
	<td width=650 align="center"><input type="email" name="email" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">전화번호</td>
	<td width=650 align="center"><input type="tel" name="phone" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">닉네임</td>
	<td width=650 align="center"><input type="text" name="name" size=60></td>
</tr>
<tr height=70>
	<td colspan="2" align="center">
	<input type="submit" value="회원가입">&nbsp;&nbsp;
	<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>