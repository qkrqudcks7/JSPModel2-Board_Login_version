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
<h2>�亯 �� �Է��ϱ�</h2>
<form action="BoardReWriteProcCtrl.do" method="post">
<table width=600 border=1>
<tr height=50>
	<td width=150 align="center">�ۼ���</td>
	<td width=450 align="center">${bean.name }</td>
</tr>
<tr height=40>
	<td width=150 align="center">����</td>
	<td width=450><input type="text" name="subject" value="��[���] " size=60></td>
</tr>
<tr height=100>
	<td width=150 align="center">�۳���</td>
	<td width=450><textarea rows=10 cols=60 name="content"></textarea></td>
</tr>
<tr height=40>
	<input type="hidden" name="id" value="${id }">
	<input type="hidden" name="name" value="${bean.name }">
	<input type="hidden" name="ref" value="${ref }">
	<input type="hidden" name="re_step" value="${re_step }">
	<input type="hidden" name="re_level" value="${re_level }">
	<input type="submit" value="��� ���� �Ϸ�">&nbsp;&nbsp;
	<input type="reset" value="���">&nbsp;&nbsp;
	<input type="button" onclick="location.href='BoardListCtrl.do'" value="��ü �� ����">
</tr>
</table>
</form>
</center>
</body>
</html>