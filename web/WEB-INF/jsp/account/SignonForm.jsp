<%--<%@ include file="../common/IncludeTop.jsp"%>--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<link rel="stylesheet" href="css/Login.css" type="text/css" media="screen" />
	<meta name="generator" content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
	<title>MyPetStore</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>

<%--顶部--%>
<header>
	<nav>
		<div id="logo">
			<svg width="40" height="32" viewBox="0 0 40 32" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M12.8 32H0V21.9849C0 17.1239 4.0116 13.1839 8.96 13.1839H15.2V0.468341C15.2 0.251458 15.3792 0.0754376 15.6 0.0754376C15.7184 0.0754376 15.8308 0.127301 15.9068 0.216883L17.3616 1.92719C18.402 1.07577 19.74 0.563816 21.2 0.563816H22C23.442 0.563816 24.7656 1.06359 25.8 1.89654L27.2932 0.14066C27.3692 0.0514706 27.4812 0 27.6 0C27.8208 0 28 0.175628 28 0.392904V15.3896H23.36C17.528 15.3896 12.8 20.0337 12.8 25.7623V32Z" fill="#45413E" />
				<path fill-rule="evenodd" clip-rule="evenodd" d="M29.76 17.0569V12.0875C29.76 12.0836 29.76 12.0797 29.76 12.0758V6.79004C29.76 6.57435 29.9392 6.4 30.16 6.4C30.266 6.4 30.3676 6.44095 30.4424 6.51389L31.9576 7.98784C32.7864 7.42501 33.7936 7.09504 34.88 7.09504C35.97 7.09504 36.9808 7.42735 37.8112 7.99369L39.3176 6.52793C39.3924 6.45499 39.494 6.41404 39.6 6.41404C39.8208 6.41404 40 6.58878 40 6.80408V23.2632C40 28.0883 35.9884 32 31.04 32H14.4V25.7938C14.4 20.969 18.4116 17.0569 23.36 17.0569H29.76Z" fill="#45413E" />
			</svg>
			My<br> Pet Store
		</div>
		<ul class="navigation-menu">
			<li>
				<a href="#">Products</a>
				<ul class="subnav">
					<li class="card-med" id="sup-dog">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/qPvaAv2gxwM3l0z7dl_eoh9v6h58HlzewBUfEgX6AZE/rs:fit:368:386/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMTIv/ZmM4YjNlYmItMDNj/Ni00NGM3LTliNGUt/YTUyOWUzOGU4NTE2/LnBuZw.png"></div>
						<a href="#">
							<span>Dogs</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                        arrow_forward
                                </span>
                            </span>
						</a>
					</li>
					<li class="card-med" id="sup-cat">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/US6gJ6fHUOJqruLB7KDe5zEa82iDSp7OdO-bv-aLtvU/rs:fit:368:310/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjU5/LzdmOWU1ZjU0LTMx/ZDQtNDgwNS1iM2E2/LWM3NzgyMTcyNzJh/NC5wbmc.png"></div>
						<a href="#">
							<span>Cats</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                        arrow_forward
                                </span>
                            </span>
						</a>
					</li>
					<li class="card-med" id="sup-bird">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/6OkSfKKP476ZKzGJoDlXfXuWzX-vjlDRotIVMTz3lmo/rs:fit:368:396/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNzA1/LzRkNmI1YjIwLTQy/YWQtNDVlMC05ZDI5/LTA0MTkyMWZkNWE1/NS5wbmc.png"></div>
						<a href="#">
							<span>Birds</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                        arrow_forward
                                </span>
                            </span>
						</a>
					</li>
					<li class="card-med" id="sup-fish">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/41Pv7w9rcbn7II_gB2vwvVCQRYE5mvpca1ZbsvMujR0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjE5/LzRlZjE1YTgyLTI3/NjYtNDlkNC1hMGE3/LWY4ZjRmNzhjM2M5/NS5wbmc.png"></div>
						<a href="#">
							<span>Fish</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                        arrow_forward
                                </span>
                            </span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">About Us</a>
			</li>
			<li>
				<%--                登录--%>
				<c:if test="${sessionScope.account == null}">
					<a href="signOnForm">Sign In</a>
				</c:if>
			</li>
			<li>
				<c:if test="${sessionScope.account != null}">
					<a href="editAccount">My Account</a>
				</c:if>
			</li>
			<li>
				<%--                登出--%>
				<c:if test="${sessionScope.account != null}">
					<a href="signOff">Sign Out</a>
				</c:if>
			</li>
		</ul>
		<div id="utility">
			<%--            搜索栏--%>
			<span class="material-symbols-outlined">
                <div id="Search">
                    <div id="SearchContent">
                        <form action="searchProduct" method="post">
                            <input type="text" name="keyword" size="14" />
                            <input type="submit" name="searchProducts" value="Search" />
                        </form>
                    </div>
                </div>
            </span>

			<span class="material-symbols-outlined">
                <a href="viewCart">
                    <img  name="img_cart" src="images/cart.gif" />
                </a>
            </span>
		</div>
	</nav>
</header>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="newAccount" method="post">
				<h1>Create Account</h1>
				<span>or use your email for registration</span>
				<input type="text" name="username" placeholder="Username" onblur="checkUsername();"/>
				<input type="email" name="email" placeholder="Email" />
				<input type="password" name="password" placeholder="Password" />
				<input type="password"  name="repeatedPassword" placeholder="Confirm Password" />
				<input type="text" name="vCode" size="5" maxlength="4" placeholder="VerificationCode"/>
				<a href="signOn"><img border="0" src="verificationCode" name="checkcode"></a>
				<button type="submit">Sign Up</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action="signOn" method="post">
				<h1>Sign in</h1>
				<span>or use your account</span>
				<input type="text" name="username" value="j2ee" onblur="checkUsername();" placeholder="username"/>
				<span id="isExistInfo" class=""></span>
				<input type="password" name="password" value="j2ee" placeholder="password"/>
				<input type="text" name="vCode" size="5" maxlength="4" placeholder="VerificationCode"/>
				<a href="signOn"><img border="0" src="verificationCode" name="checkcode"></a>
				<a href="newAccountForm">Register Now!</a>
<%--				<a href="#">Forgot your password?</a>--%>
				<button type="submit">Sign In</button>
			</form>
		</div>

		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Enter your personal details and start journey with us</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		const signUpButton = document.getElementById('signUp');
		const signInButton = document.getElementById('signIn');
		const container = document.getElementById('container');

		signUpButton.addEventListener('click', () => {
			container.classList.add("right-panel-active");
		});

		signInButton.addEventListener('click', () => {
			container.classList.remove("right-panel-active");
		});
	</script>
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

