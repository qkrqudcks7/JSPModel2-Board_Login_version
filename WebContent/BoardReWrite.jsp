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
<h2>답변 글 입력하기</h2>
<form action="BoardReWriteProcCtrl.do" method="post">
<table width=600 border=1>
<tr height=50>
	<td width=150 align="center">작성자</td>
	<td width=450 align="center">${bean.name }</td>
</tr>
<tr height=40>
	<td width=150 align="center">제목</td>
	<td width=450><input type="text" name="subject" value="ㄴ[답글] " size=60></td>
</tr>
<tr height=100>
	<td width=150 align="center">글내용</td>
	<td width=450><textarea rows=10 cols=60 name="content"></textarea></td>
</tr>
<tr height=40>
	<input type="hidden" name="id" value="${id }">
	<input type="hidden" name="name" value="${bean.name }">
	<input type="hidden" name="ref" value="${ref }">
	<input type="hidden" name="re_step" value="${re_step }">
	<input type="hidden" name="re_level" value="${re_level }">
	<input type="submit" value="답글 쓰기 완료">&nbsp;&nbsp;
	<input type="reset" value="취소">&nbsp;&nbsp;
	<input type="button" onclick="location.href='BoardListCtrl.do'" value="전체 글 보기">
</tr>
</table>
</form>
</center>
</body>
</html>