<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
			<h2>�Խñ� ����</h2>
		<form action="BoardUpdateProcCtrl.do" method="post">
		<table width=600 border=1 bgcolor="skyblue">
		<tr height=40>
			<td width=120 align="center">�ۼ���</td>
			<td width=180 align="center">${bean.name }</td>
			<td width=120 align="center">�ۼ���</td>
			<td width=180 align="center">${bean.reg_date }</td>
		</tr>
		<tr height=40>
			<td width=120 align="center">����</td>
			<td width=480 colspan="3">&nbsp;
			<input type="text" name="subject" value="${bean.subject }" size=60>
			</td>
		</tr>
		<tr height=40>
			<td width=120 align="center">�� ����</td>
			<td width=480 colspan="3">&nbsp;
			<textarea rows=10 cols=60 name="content" align="left">${bean.content }</textarea>
			</td>
		</tr>
		<tr height=40>
			<td colspan="4" align="center">
			<input type="hidden" name="num" value="${bean.num }">
			<input type="hidden" name="id" value="${id }">
			<input type="hidden" name="id2" value="${bean.id }">
			<input type="submit"value="�� ����">&nbsp;&nbsp;
			<input type="button" onclick="location.href='BoardListCtrl.do'" value="��ü ����">
		</table>
		</form>
	</center>
</body>
</html>