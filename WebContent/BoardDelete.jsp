<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>�Խñ� ����</h2>
		<form action="BoardDeleteProcCtrl.do" method="post">
		<table width=600 border=1 bgcolor="skyblue">
		<tr height=40>
			<td width=120 align="center">�ۼ���</td>
			<td width=180 align="center">${bean.name }</td>
			<td width=120 align="center">�ۼ���</td>
			<td width=180 align="center">${bean.reg_date }</td>
		</tr>
		<tr height=40>
			<td width=120 align="center">����</td>
			<td align="center" colspan="3">${bean.subject }</td>
		</tr>
		<tr height=40>
			<td align="center" colspan="4">
			<input type="hidden" name="num" value="${bean.num }">
			<input type="submit" value="�� ����">&nbsp;&nbsp;
			<input type="button" value="���" onclick="location.href='BoardListCtrl.do'">
			</td>
		</tr>
		</table>
		</form>
		</center>
</body>
</html>