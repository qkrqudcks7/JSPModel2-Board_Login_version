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
<h2> �α���</h2>
<table width=400 border=1>
<tr height=50>
	<td width=200 align="center"><input type="text" name="id" placeholder="���̵� :" size=60></td>
</tr>
<tr height=50>
	<td width=200 align="center"><input type="password" name="password" placeholder="��й�ȣ :" size=60></td>
</tr>
<tr height=50>
	<td width=200 align="center">
	<input type="submit" value="�α���">&nbsp;&nbsp;
	<input type="button" onclick="location.href='Join.jsp'" value="ȸ������">&nbsp;&nbsp;
	<input type="button" onclick="location.href='BoardListCtrl.do'" value="�Խ��� �ٷΰ���">
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>