<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Summers Lux Suites</title>
	<style>
		html {
		    min-height: 100vh;
		    min-width: 100vw;
		}
		
		html, body, div, header {
		    display: flex;
		}
		
		body {
		    height: 100%;
		    width: 100%;
		    margin: 0;
		}
		
		.flex-row {
		    -moz-box-direction: row;
		    -webkit-box-direction: row;
		    -webkit-box-orient: horizontal;
		    -webkit-flex-direction: row;
		    -ms-flexbox-direction: row;
		    -ms-flex-direction: row;
		    flex-direction: row;
		}
		
		.flex-col {
		    -moz-box-direction: column;
		    -webkit-box-direction: column;
		    -webkit-box-orient: vertical;
		    -webkit-flex-direction: column;
		    -ms-flexbox-direction: column;
		    -ms-flex-direction: column;
		    flex-direction: column;
		}
		
		.full-width {
			width: 100%;
		}
		
		.header {
			height: 60px;
			border-bottom: inset;
		}
		
		.logo-container {
			width: 33%;
			height:100%
		}
		
		.logo {
			height:50px;
		}
		
		.right-header-buttons {
			flex-direction: row-reverse;
			height:100%;
			width:17%;
		}
		
		.nav-button {
			color: black;
		}
		
		.center {
			margin: auto;
		}	
		
		.spacer {
			width:50%;
		}		
		
		hr {
			color: gray;
		}	
		
		.main-content {
			height:100%;
			width: 100%;
		}
		
		.center-text {
			text-align: center;
		}
		
		.coming-soon-text {
			width: 100%;
			font-size: 48px;
			color: rebeccapurple;
		}
	</style>
</head>


<body class="flex-col">
	<header class="header full-width flex-row">
		<div class="logo-container">
			<img class="center logo" src="https://media.istockphoto.com/vectors/hand-drawn-lettering-composition-of-summer-with-a-sun-vector-id962094846?k=20&m=962094846&s=612x612&w=0&h=IhRatatlw0E9riOk3A1zsjvdTCjig7IPmHtGE1vi-mI="  />
			<a href="/${guest.email}" class="nav-button center">Home</a>
			<a href="#" class="nav-button center">Listings</a>
			<a href="/profile/${guest.email}" class="nav-button center">Profile</a>
		</div>
		<div class="spacer">
		</div>
		<c:choose>
		    <c:when test="${guest != null}">
		        <div class="right-header-buttons">
					<a href="/" class="center nav-button">Sign Out</a>
				</div>
		    </c:when>    
		    <c:otherwise>
		        <div class="right-header-buttons">
					<a href="/sign-in" class="center nav-button">Sign In</a>
					<hr />
					<a href="/sign-up" class="center nav-button">Register</a>
				</div>
		    </c:otherwise>
		</c:choose>
	</header>
	<div class="main-content flex-col">
		<div class="flex-row full-width">
			<h1 class="full-width center-text flex-row">Welcome to Summers Lux Suites
				<c:if test="${guest != null}">
					 ${guest.name}
				</c:if>!!!!
			</h1>
		</div>
		<div class="flex-row full-width center-text">
			<p class="coming-soon-text">More Features COMING SOON!!!!!</p>
		</div>
	</div>
</body>

</html>
