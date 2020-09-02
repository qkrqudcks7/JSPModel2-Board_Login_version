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
<h2>게시글 쓰기</h2>
<form action="BoardWriteProcCtrl.do" method="post">
<table width=600 border=1>
<tr height=50>
	<td width=150 align="center">작성자</td>
	<td width=450 align="center">${bean.name }</td>
</tr>
<tr height=50>
	<td width=150 align="center">제목</td>
	<td width=450 align="center"><input type="text" name="subject" size=60 ></td>
</tr>
<tr height=50>
	<td width=150 align="center">글 내용</td>
	<td width=450 align="center"><textarea rows=10 cols=60 name="content"></textarea></td>
</tr>
<tr height=50>
	<td colspan="2" align="center">
		<input type="hidden" name="id" value="${id }">
		<input type="hidden" name="name" value="${bean.name }">
		<input type="submit" value="글 쓰기">&nbsp;&nbsp;
		<input type="reset" value="다시 작성"> &nbsp;&nbsp;
		<input type="button" onclick="location.href='BoardListCtrl.do'" value="돌아가기">
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>