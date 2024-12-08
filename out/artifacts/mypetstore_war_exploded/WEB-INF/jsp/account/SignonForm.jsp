<%--<%@ include file="../common/IncludeTop.jsp"%>--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<link rel="StyleSheet" href="css/jpetstore.css" type="text/css" media="screen" />

	<meta name="generator" content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
	<title>MyPetStore</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	.okmsg{
		color: #54c07a;
	}
</style>
</head>

<body>

<div id="Header">

	<div id="Logo">
		<div id="LogoContent">
			<a href="main"><img src="images/logo-topbar.gif" /></a>
			阿是空间大看上你大健康
		</div>
	</div>

	<div id="Menu">
		<div id="MenuContent">
			<!--购物车-->
			<a href="viewCart"><img align="middle" name="img_cart" src="images/cart.gif" /></a>
			<img align="middle" src="images/separator.gif" />
			<c:if test="${sessionScope.account == null}">
				<a href="signOnForm">Sign In</a>
			</c:if>
			<c:if test="${sessionScope.account != null}">
				<a href="signOff">Sign Out</a>
				<!---signOff-->
			</c:if>

			<!--分隔符-->
			<c:if test="${sessionScope.account != null}">
				<img align="middle" src="images/separator.gif" />
				<a href="editAccount">My Account</a>
			</c:if>
			<img align="middle" src="images/separator.gif" />
			<!--暂未提供-->
			<a href="JPetStoreDemo.html">?</a>
		</div>
	</div>

	<div id="Search">
		<div id="SearchContent">
			<!--搜索栏目-->
			<form action="searchProduct" method="post">
				<input type="text" name="keyword" size="14" />
				<input type="submit" name="searchProducts" value="Search" />
			</form>
		</div>
	</div>

	<div id="QuickLinks">
		<a href="viewCategory?categoryId=FISH"><img src="images/sm_fish.gif" /></a>
		<img src="images/separator.gif" />
		<a href="viewCategory?categoryId=DOGS"><img src="images/sm_dogs.gif" /></a>
		<img src="images/separator.gif" />
		<a href="viewCategory?categoryId=REPTILES"><img src="images/sm_reptiles.gif" /></a>
		<img src="images/separator.gif" />
		<a href="viewCategory?categoryId=CATS"><img src="images/sm_cats.gif" /></a>
		<img src="images/separator.gif" />
		<a href="viewCategory?categoryId=BIRDS"><img src="images/sm_birds.gif" /></a>
	</div>
</div>
<div id="Content">
<div id="Catalog">
	<form action="signOn" method="post">
		<p>Please enter your username and password.</p>
		<p>
			Username:<input type="text" id="username" name="username" value="j2ee" onblur="checkUsername();"/><br />
		    Password:<input type="password" name="password" value="j2ee" /><br />
			<span id="isExistInfo" class=""></span><br />
			VerificationCode:<input type="text" name="vCode" size="5" maxlength="4"/>
			<a href="signOn"><img border="0" src="verificationCode" name="checkcode"></a>
		</p>
		<input type="submit" name="signon" value="Login" />
	</form>
		Need a user name and password?
	    <!--newAccountForm-->
	    <a href="newAccountForm">Register Now!</a>
</div>
	<script>

		var xhr;
		function checkUsername(){
			var username = document.getElementById("username").value;
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange = process;
			xhr.open("GET","usernameIsExist?username="+username,true);
			xhr.send(null);
		}
		function process(){

			if(xhr.readyState == 4){

				if(xhr.status==200){
					console.log("200sucess")
					var responseInfo = xhr.responseText.trim();
					var msg = document.getElementById('isExistInfo');

					if(responseInfo == "exist"){
						console.log("username exist")
						msg.classList.add("okmsg");
						msg.innerText='用户名可用';
					}else if(responseInfo == "noexist"){
						msg.classList.add("errormsg");
						msg.innerText='用户名不可用';
					}else{
						console.log("fail")
					}
					console.log("finish")
				}
			}
		}
	</script>

<%@ include file="../common/IncludeBottom.jsp"%>

