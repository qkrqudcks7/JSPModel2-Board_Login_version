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
<font size=7><b>ȸ������</b></font>
<br><br><br>
<form action="MemberProcCtrl.do">
<table width=1000 border=1>
<tr height=70>
	<td width=250 align="center">���̵�</td>
	<td width=650 align="center"><input type="text" name="id" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">��й�ȣ</td>
	<td width=650 align="center"><input type="password" name="password" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">��й�ȣ Ȯ��</td>
	<td width=650 align="center"><input type="password" name="password2" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">�̸���</td>
	<td width=650 align="center"><input type="email" name="email" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">��ȭ��ȣ</td>
	<td width=650 align="center"><input type="tel" name="phone" size=60></td>
</tr>
<tr height=70>
	<td width=250 align="center">�г���</td>
	<td width=650 align="center"><input type="text" name="name" size=60></td>
</tr>
<tr height=70>
	<td colspan="2" align="center">
	<input type="submit" value="ȸ������">&nbsp;&nbsp;
	<input type="reset" value="���">
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>