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
<h2>�Խñ� ����</h2>
<table width=600 border=1 >
<tr height=40>
	<td align="center" width=120>�� ��ȣ</td>
	<td align="center" width=180>${bean.num }</td>
	<td align="center" width=120>��ȸ��</td>
	<td align="center" width=180>${bean.readcount }</td>
</tr>
<tr height=40>
	<td align="center" width=120>�ۼ���</td>
	<td align="center" width=180>${bean.name }</td>
	<td align="center" width=120>�ۼ���</td>
	<td align="center" width=180>${bean.reg_date }</td>
</tr>
<tr height=40>
	<td align="center" width=120>����</td>
	<td align="center" colspan="3">${bean.subject }</td>
</tr>
<tr height=40>
	<td align="center" width=120>�� ����</td>
	<td align="center" colspan="3">${bean.content }</td>
</tr>
<tr height=40>
	<td align="center" colspan="4">
	<input type="button" value="��۾���" onclick="location.href='BoardReWrite.do?num=${bean.num}&ref=${bean.ref }&re_step=${bean.re_step }&re_level=${bean.re_level }'">
	<input type="button" value="�����ϱ�" onclick="location.href='BoardUpdate.do?num=${bean.num}'">
	<input type="button" value="�����ϱ�" onclick="location.href='BoardDelete.do?num=${bean.num}'">
	<input type="button" value="��ü����" onclick="location.href='BoardListCtrl.do'">
	</td>
</tr>
</table>
</center>
</body>
</html>