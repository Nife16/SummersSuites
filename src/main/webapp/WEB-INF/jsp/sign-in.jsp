<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.full-height {
	height:100%;
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
	height: 100%
}

.logo {
	height: 50px;
}

.right-header-buttons {
	flex-direction: row-reverse;
	height: 100%;
	width: 17%;
}

.nav-button {
	color: black;
}

.center {
	margin: auto;
}

.center-vert {
	margin: auto 0;
}

.spacer {
	width: 50%;
}

hr {
	color: gray;
}

.main-content {
	height: 100%;
	width: 100%;
}

.center-text {
	text-align: center;
}

.sign-up-form {
	height: 80%;
	width: 30%;
	margin: auto;
	background-color: silver;
    border-radius: 20px;
}

.form-group {
	margin: 20px 0px;
	justify-content: center;
}

.form-input {
	margin: 5px 20px;
	justify-content: center;
}

.sub-container {
	margin-top: 20px;
}

button {
	-webkit-border-radius: 20px;
    -moz-border-radius: 20px;
     border-radius: 20px;
     border: 1px solid black;
     color: silver;
     background-color: black;
     width: 250px;
     height: 35px;
}

button:hover {
     outline: none;
     border: 1px solid black;
     background-color: silver;
     color: black;
}

input{
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
     border-radius: 20px;
     border: 1px solid black;
     color: silver;
     width: 250px;
     height: 35px;
    }
    
input:focus {
     outline: none;
     border: 1px solid black;
     color: silver;
}

</style>
</head>


<body class="flex-col">
	<header class="header full-width flex-row">
		<div class="logo-container">
			<img class="center logo"
				src="https://media.istockphoto.com/vectors/hand-drawn-lettering-composition-of-summer-with-a-sun-vector-id962094846?k=20&m=962094846&s=612x612&w=0&h=IhRatatlw0E9riOk3A1zsjvdTCjig7IPmHtGE1vi-mI=" />
			<a href="/" class="nav-button center">Home</a> <a href="#"
				class="nav-button center">Listings</a> <a href="#"
				class="nav-button center">Profile</a>
		</div>
		<div class="spacer"></div>
		<div class="right-header-buttons">
			<a href="#" class="center nav-button">Sign In</a>
			<hr />
			<a href="/sign-up" class="center nav-button">Register</a>
		</div>
	</header>
	<div class="main-content flex-col">
		<div class="flex-row full-width">
			<h1 class="full-width center-text">Sign In to
				Summers Lux Suites!!!!</h1>
		</div>
		<div class="flex-row full-width full-height center-text">
			<div class="sign-up-form">
				<form:form class="full-height full-width" modelAttribute="guest" action="profile" method="post">
					<div class="flex-col sub-container">
						<div class="form-group flex-col">
							<div class="form-input">
								<label class="center-vert" for="email">Email</label>
								<form:input path="email" type="text" class="form-input" id="email" />
							</div>
							<div class="form-input">
								<label class="center-vert" for="password">Password</label>
								<form:input path="password" type="password" class="form-input" id="password" />
							</div>
						</div>
						<div class="form-group flex-row">
							<form:button type="submit" class="submit-button">Submit</form:button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>

</html>
