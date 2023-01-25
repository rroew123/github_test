<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
</head>
<style>
.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
}
</style>
<body>
<%@ include file="member_top.jsp" %>
	<h2 class="subtitle">아이디찾기</h2>
	<fieldset>
		<legend class="hidden">아이디 찾기</legend>
		<form action="./findIDProc">
			<input type="text" name="email" value="" class="form_input member"
				placeholder="이메일" autocomplete="off"> <input type="submit"
				value="찾기">

			<c:if test="${findId  != null}">

				<span>고객님의 ${findId} 를 찾았습니다<br />
				</span>
			</c:if>
			<c:if test="${findId == null}">

			</c:if>
		</form>
	</fieldset>
	
	<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="./shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="./customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
	
	
</body>
</html>