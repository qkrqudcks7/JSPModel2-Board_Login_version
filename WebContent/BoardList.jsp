<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${msg==2 }">
	<script type="text/javascript">
		alert("패스워드가 일치하지 않습니다.")
		history.go(-1)
	</script>
</c:if>
<c:if test="${msg==3 }">
	<script type="text/javascript">
		alert("아이디가 일치하지 않습니다.")
		history.go(-1)
	</script>
</c:if>
<c:if test="${msg==4 }">
	<script type="text/javascript">
		alert("해당 사용자만 변경할 수 있습니다.")
		history.go(-1)
	</script>
</c:if>
<c:set var="id" value="${id }"/>
<c:if test="${id==null }">
	<input type="button" value="로그인" onclick="location.href='Login.jsp'">
</c:if>
<c:if test="${id!=null }">
<center>
<h2>전체 글 보기</h2>
<input type="button" value="로그아웃" onclick="location.href='Logout.jsp'">${id }님 안녕하세요
<table width=700 border=1>
<tr height=50>
	<td align="right" colspan="5">
	<button onclick="location.href='BoardWrite.do'">글 쓰기</button>
	</td>
</tr>
<tr height=50>
	<td width=50 align="center">번호</td>
	<td width=320 align="center">제목</td>
	<td width=100 align="center">작성자</td>
	<td width=150 align="center">작성일</td>
	<td width=70 align="center">조회수</td>
</tr>
<c:set var="number" value="${number }"/>
	<c:forEach var="bean" items="${v }">
		<tr height=50>
			<td width=50 align="center">${number }</td>
			<td width=320 align="left">
				<c:if test="${bean.re_step>1 }">
					<c:forEach var="j" begin="1" end="${(bean.re_step-1)*5 }">
						&nbsp;
					</c:forEach>
				</c:if>
				<a href="BoardInfoCtrl.do?num=${bean.num }">
					${bean.subject }
				</a>
			</td>
			<td width=100 align="center">${bean.name }</td>
			<td width=150 align="center">${bean.reg_date }</td>
			<td width=70 align="center">${bean.readcount }</td>
		</tr>
		<c:set var="number" value="${number-1 }"/>
	</c:forEach>
</table>

<p>
<c:if test="${count>0 }">
	<c:set var="pageCount" value="${count/pageSize+(count%pageSize==0 ? 0:1) }"/>
	<c:set var="startPage" value="${1 }"/>
	<c:if test="${currentPage%10!=0 }">
		<fmt:parseNumber var="result" value="${currentPage/10 }" integerOnly="true"></fmt:parseNumber>
		<c:set var="startPage" value="${result*10+1 }"></c:set>
	</c:if>
	
	<c:if test="${currentPage%10==0 }">
		<c:set var="startPage" value="${(result-1)*10+1 }"/>
	</c:if>
	
	<c:set var="pageBlock" value="${10 }"/>
	<c:set var="endPage" value="${startPage+pageBlock-1 }"/>
	
	<c:if test="${endPage>pageCount }">
		<c:set var="endPage" value="${pageCount }"/>
	</c:if>
	
	<c:if test="${startPage>10 }">
		<a href="BoardListCtrl.do?pageNum=${startPage-10 }">[이전]</a>
	</c:if>
	
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<a href="BoardListCtrl.do?pageNum=${i }">[${i }]</a>
	</c:forEach>
	
	<c:if test="${endPage<pageCount }">
		<a href="BoardListCtrl.do?pageNum=${startPage+10 }">[다음]</a>
	</c:if>
</c:if>
</c:if>
</center>
</body>
</html>