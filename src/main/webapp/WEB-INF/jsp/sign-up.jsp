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
	height: 50%;
	width: 50%;
	margin: auto;
}

.form-group {
	margin: 20px 0px;
	justify-content: center;
}

.form-input {
	margin: 0px 20px;
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
			<a href="/sign-in" class="center nav-button">Sign In</a>
			<hr />
			<a href="#" class="center nav-button">Register</a>
		</div>
	</header>
	<div class="main-content flex-col">
		<div class="flex-row full-width">
			<h1 class="full-width center-text">Sign up for an Account to
				Summers Lux Suites!!!!</h1>
		</div>
		<div class="flex-row full-width full-height center-text">
			<div class="sign-up-form flex-col">
				<form:form class="full-height full-width" modelAttribute="guest" action="sign-up" method="post">
					<div class="form-group flex-row">
						<div class="form-input">
							<label for="name">Full name</label>
							<form:input path="name" type="text" class="form-input" id="name" />
						</div>
						<div>
							<label for="age">Age</label>
							<form:input path="age" type="number" class="form-input" id="age" />
						</div>
					</div>
					<div class="form-group flex-row">
						<div class="form-input">
							<label for="email">Email</label>
							<form:input path="email" type="text" class="form-input" id="email" />
						</div>
						<div>
							<label for="password">Password</label>
							<form:input path="password" type="password" class="form-input" id="password" />
						</div>
					</div>
					<div class="form-group flex-row">
						<div class="form-input">
							<label for=phoneNumber>Phone Number</label>
							<form:input path="phoneNumber" type="text" class="form-input" id="phoneNumber" />
						</div>
					</div>
					<div class="form-group flex-row">
						<form:button type="submit" class="submit-button">Submit</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>

</html>
