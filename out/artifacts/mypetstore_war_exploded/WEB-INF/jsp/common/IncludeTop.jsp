<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="StyleSheet" href="css/jpetstore.css" type="text/css" media="screen" />

    <meta name="generator" content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>MyPetStore</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

</div>
<footer>

    <ul>
        Products
        <li><a href="#">Food &amp; Treats</a></li>
        <li><a href="#">Toys</a></li>
        <li><a href="#">Beds &amp; Furniture</a></li>
        <li><a href="#">Outdoor Supplies</a></li>
        <li><a href="#">Clothing</a></li>
        <li><a href="#">Aquariums</a></li>
        <li><a href="#">Rocks &amp; Decorations</a></li>
    </ul>

    <ul>
        Shop by Pet
        <li><a href="#">Dogs</a></li>
        <li><a href="#">Cats</a></li>
        <li><a href="#">Birds</a></li>
        <li><a href="#">Fish</a></li>
    </ul>

    <ul>
        Our Company
        <li><a href="#">Locations &amp; Hours</a></li>
        <li><a href="#">About Us</a></li>
    </ul>


</footer>
</body>
</html>
