<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
	<link rel="stylesheet" href="css/newAccount.css" type="text/css" media="screen" />
	<link rel="StyleSheet" href="css/TopAndBottom.css" type="text/css" media="screen"/>

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
		<script>
			document.getElementById("logo").addEventListener("click", function () {
				window.location.href = "main"; // 指定跳转的链接
			});
		</script>
		<ul class="navigation-menu">
			<li>
				<a href="#">Products</a>
				<ul class="subnav">
					<li class="card-med" id="sup-dog">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/qPvaAv2gxwM3l0z7dl_eoh9v6h58HlzewBUfEgX6AZE/rs:fit:368:386/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMTIv/ZmM4YjNlYmItMDNj/Ni00NGM3LTliNGUt/YTUyOWUzOGU4NTE2/LnBuZw.png"></div>
						<a href="viewCategory?categoryId=DOGS">
							<span>Dogs</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <path d="M14.25 8.75L2.5 8.75L2.5 10.4167L14.25 10.4167L11.6667 13L12.8333 14.1667L17.4167 9.58334L12.9167 5L11.75 6.16666L14.25 8.75Z"   fill="#45413E" >
                                        </path>
                                        </svg>
                                </span>
                            </span>
						</a>
					</li>
					<li class="card-med" id="sup-cat">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/US6gJ6fHUOJqruLB7KDe5zEa82iDSp7OdO-bv-aLtvU/rs:fit:368:310/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjU5/LzdmOWU1ZjU0LTMx/ZDQtNDgwNS1iM2E2/LWM3NzgyMTcyNzJh/NC5wbmc.png"></div>
						<a href="viewCategory?categoryId=CATS">
							<span>Cats</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                       <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <path d="M14.25 8.75L2.5 8.75L2.5 10.4167L14.25 10.4167L11.6667 13L12.8333 14.1667L17.4167 9.58334L12.9167 5L11.75 6.16666L14.25 8.75Z"   fill="#45413E" >
                                        </path>
                                        </svg>
                                </span>
                            </span>
						</a>
					</li>
					<li class="card-med" id="sup-bird">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/6OkSfKKP476ZKzGJoDlXfXuWzX-vjlDRotIVMTz3lmo/rs:fit:368:396/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNzA1/LzRkNmI1YjIwLTQy/YWQtNDVlMC05ZDI5/LTA0MTkyMWZkNWE1/NS5wbmc.png"></div>
						<a href="viewCategory?categoryId=BIRDS">
							<span>Birds</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <path d="M14.25 8.75L2.5 8.75L2.5 10.4167L14.25 10.4167L11.6667 13L12.8333 14.1667L17.4167 9.58334L12.9167 5L11.75 6.16666L14.25 8.75Z"   fill="#45413E" >
                                        </path>
                                        </svg>
                                </span>
                            </span>
						</a>
					</li>
					<li class="card-med" id="sup-fish">
						<div class="card-image"><img src="https://ouch-cdn2.icons8.com/41Pv7w9rcbn7II_gB2vwvVCQRYE5mvpca1ZbsvMujR0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjE5/LzRlZjE1YTgyLTI3/NjYtNDlkNC1hMGE3/LWY4ZjRmNzhjM2M5/NS5wbmc.png"></div>
						<a href="viewCategory?categoryId=FISH">
							<span>Fish</span>
							<span>Shop All
                                <span class="material-symbols-outlined">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <path d="M14.25 8.75L2.5 8.75L2.5 10.4167L14.25 10.4167L11.6667 13L12.8333 14.1667L17.4167 9.58334L12.9167 5L11.75 6.16666L14.25 8.75Z"   fill="#45413E" >
                                        </path>
                                        </svg>
                                </span>
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
                        <form action="searchProduct" method="post" class="need">
                            <input type="text" name="keyword" size="14" id="searchInput" />
                            <button type="submit" id="svgButton" style="border: none; background: transparent;">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="25" height="25" viewBox="0 0 25 25" fill="none">
                                <path d="M19.4708 18.3659C20.9862 16.5901 21.8458 14.3375 21.8458 11.9649C21.8461 6.50704 17.4224 2.08334 11.9649 2.08334C6.50732 2.08334 2.08334 6.50731 2.08334 11.9646C2.08334 17.4222 6.50732 21.8464 11.9646 21.8464C12.0866 21.8465 12.2086 21.8443 12.3306 21.8399C12.4525 21.8355 12.5743 21.8288 12.696 21.8199C12.8177 21.8109 12.9392 21.7997 13.0605 21.7863C13.1818 21.7729 13.3028 21.7572 13.4235 21.7393C13.5442 21.7214 13.6645 21.7012 13.7845 21.6788C13.9044 21.6565 14.0239 21.6319 14.143 21.6051C14.262 21.5783 14.3805 21.5493 14.4985 21.5181C14.6164 21.4869 14.7338 21.4535 14.8505 21.418C14.8627 21.4142 14.8747 21.4101 14.8867 21.4057C14.8987 21.4013 14.9105 21.3967 14.9223 21.3917C14.934 21.3868 14.9456 21.3815 14.957 21.376C14.9685 21.3705 14.9799 21.3647 14.9911 21.3586C15.0022 21.3525 15.0133 21.3462 15.0242 21.3395C15.035 21.3329 15.0457 21.326 15.0563 21.3189C15.0668 21.3117 15.0772 21.3043 15.0874 21.2967C15.0976 21.289 15.1075 21.2811 15.1174 21.273C15.1271 21.2649 15.1367 21.2565 15.1461 21.2479C15.1555 21.2393 15.1647 21.2304 15.1736 21.2214C15.1826 21.2123 15.1913 21.2031 15.1998 21.1936C15.2083 21.1841 15.2166 21.1744 15.2246 21.1645C15.2326 21.1546 15.2404 21.1445 15.2479 21.1343C15.2555 21.124 15.2627 21.1136 15.2698 21.103C15.2768 21.0923 15.2836 21.0815 15.2901 21.0706C15.2966 21.0596 15.3028 21.0485 15.3087 21.0373C15.3147 21.026 15.3203 21.0146 15.3258 21.0031C15.3311 20.9915 15.3362 20.9799 15.3411 20.9681C15.3459 20.9563 15.3504 20.9444 15.3547 20.9324C15.3589 20.9204 15.3629 20.9083 15.3665 20.8961C15.3702 20.8839 15.3735 20.8716 15.3766 20.8592C15.3796 20.8469 15.3824 20.8344 15.3848 20.8219C15.3872 20.8094 15.3894 20.7969 15.3912 20.7843C15.393 20.7717 15.3945 20.759 15.3958 20.7464C15.397 20.7337 15.3979 20.721 15.3985 20.7083C15.3991 20.6955 15.3993 20.6828 15.3993 20.6701C15.3993 20.6573 15.3989 20.6446 15.3983 20.6319C15.3976 20.6192 15.3966 20.6065 15.3954 20.5938C15.3941 20.5811 15.3925 20.5685 15.3906 20.5559C15.3887 20.5433 15.3865 20.5308 15.384 20.5183C15.3815 20.5058 15.3787 20.4934 15.3756 20.481C15.3725 20.4687 15.3691 20.4564 15.3653 20.4442C15.3616 20.4321 15.3576 20.42 15.3533 20.408C15.349 20.396 15.3444 20.3841 15.3395 20.3724C15.3346 20.3606 15.3295 20.349 15.324 20.3375C15.3185 20.326 15.3128 20.3146 15.3068 20.3034C15.3008 20.2921 15.2945 20.2811 15.288 20.2702C15.2814 20.2592 15.2746 20.2485 15.2675 20.2379C15.2604 20.2273 15.2531 20.2169 15.2455 20.2067C15.2379 20.1964 15.2301 20.1864 15.222 20.1765C15.2139 20.1667 15.2056 20.157 15.1971 20.1476C15.1885 20.1382 15.1797 20.1289 15.1707 20.12C15.1617 20.1109 15.1525 20.1021 15.1431 20.0936C15.1337 20.085 15.124 20.0767 15.1142 20.0686C15.1044 20.0605 15.0943 20.0527 15.0841 20.0451C15.0739 20.0375 15.0635 20.0302 15.0529 20.0231C15.0423 20.016 15.0316 20.0091 15.0207 20.0026C15.0097 19.996 14.9987 19.9897 14.9875 19.9837C14.9762 19.9777 14.9649 19.972 14.9534 19.9665C14.9419 19.961 14.9302 19.9558 14.9185 19.9509C14.9067 19.946 14.8948 19.9414 14.8829 19.9371C14.8709 19.9328 14.8588 19.9288 14.8466 19.9251C14.8345 19.9213 14.8222 19.9179 14.8099 19.9148C14.7975 19.9117 14.7851 19.9088 14.7726 19.9063C14.7601 19.9038 14.7476 19.9016 14.735 19.8997C14.7224 19.8978 14.7098 19.8962 14.6971 19.8949C14.6844 19.8936 14.6717 19.8926 14.659 19.8919C14.6463 19.8912 14.6336 19.8909 14.6208 19.8909C14.6081 19.8908 14.5954 19.8911 14.5827 19.8917C14.5699 19.8922 14.5572 19.8931 14.5445 19.8943C14.5319 19.8955 14.5192 19.897 14.5066 19.8989C14.494 19.9007 14.4815 19.9028 14.469 19.9052C14.4565 19.9077 14.444 19.9104 14.4317 19.9134C14.4193 19.9165 14.407 19.9198 14.3948 19.9234C14.2965 19.9534 14.1977 19.9814 14.0983 20.0077C13.999 20.034 13.8992 20.0584 13.799 20.0809C13.6987 20.1035 13.5981 20.1242 13.4971 20.143C13.396 20.1619 13.2947 20.1788 13.1931 20.1939C13.0914 20.2089 12.9895 20.2221 12.8874 20.2334C12.7853 20.2447 12.683 20.2541 12.5805 20.2617C12.478 20.2692 12.3755 20.2747 12.2728 20.2785C12.1701 20.2822 12.0674 20.284 11.9646 20.2839C7.37033 20.2836 3.64584 16.5591 3.64584 11.9646C3.64584 7.37032 7.37033 3.64583 11.9646 3.64583C16.5591 3.64583 20.2839 7.37032 20.2839 11.9646C20.2839 14.1443 19.4201 16.2052 17.9123 17.7586C17.902 17.7691 17.8921 17.7798 17.8824 17.7909C17.8728 17.8018 17.8634 17.813 17.8542 17.8245C17.8451 17.8359 17.8362 17.8476 17.8277 17.8595C17.8191 17.8713 17.8108 17.8834 17.8029 17.8957C17.7949 17.908 17.7872 17.9204 17.7799 17.9331C17.7725 17.9457 17.7654 17.9586 17.7587 17.9716C17.7519 17.9846 17.7455 17.9977 17.7394 18.011C17.7333 18.0243 17.7275 18.0378 17.7221 18.0514C17.7166 18.0649 17.7115 18.0786 17.7067 18.0925C17.7019 18.1063 17.6975 18.1203 17.6934 18.1343C17.6893 18.1484 17.6855 18.1625 17.6821 18.1768C17.6787 18.191 17.6756 18.2053 17.6729 18.2197C17.6701 18.2341 17.6678 18.2485 17.6657 18.263C17.6637 18.2775 17.6621 18.2921 17.6607 18.3067C17.6594 18.3212 17.6585 18.3358 17.6579 18.3505C17.6573 18.3651 17.657 18.3797 17.6571 18.3944C17.6572 18.409 17.6577 18.4236 17.6585 18.4383C17.6593 18.4529 17.6605 18.4675 17.6621 18.482C17.6636 18.4966 17.6654 18.5111 17.6677 18.5256C17.6699 18.5401 17.6725 18.5545 17.6755 18.5688C17.6784 18.5831 17.6817 18.5974 17.6853 18.6116C17.6889 18.6258 17.6929 18.6399 17.6972 18.6539C17.7015 18.6678 17.7062 18.6817 17.7112 18.6955C17.7162 18.7093 17.7215 18.7229 17.7271 18.7364C17.7328 18.7499 17.7388 18.7632 17.7451 18.7765C17.7514 18.7897 17.758 18.8027 17.7649 18.8156C17.7719 18.8285 17.7791 18.8412 17.7867 18.8538C17.7942 18.8663 17.8021 18.8787 17.8102 18.8909C17.8184 18.903 17.8268 18.915 17.8356 18.9267C17.8443 18.9384 17.8533 18.95 17.8626 18.9613C17.8719 18.9726 17.8815 18.9837 17.8913 18.9945C17.9012 19.0054 17.9113 19.016 17.9216 19.0263L21.5831 22.6878C21.5922 22.6967 21.6014 22.7054 21.6109 22.7139C21.6204 22.7223 21.6301 22.7305 21.64 22.7385C21.6499 22.7465 21.66 22.7543 21.6702 22.7618C21.6805 22.7693 21.691 22.7765 21.7016 22.7835C21.7122 22.7905 21.723 22.7973 21.734 22.8037C21.7449 22.8102 21.756 22.8164 21.7673 22.8223C21.7785 22.8282 21.7899 22.8339 21.8015 22.8392C21.813 22.8446 21.8246 22.8497 21.8364 22.8545C21.8482 22.8593 21.8601 22.8638 21.8721 22.868C21.8841 22.8722 21.8962 22.8761 21.9084 22.8798C21.9206 22.8834 21.9329 22.8867 21.9452 22.8897C21.9576 22.8928 21.97 22.8955 21.9825 22.8979C21.9949 22.9003 22.0075 22.9024 22.0201 22.9042C22.0327 22.906 22.0453 22.9075 22.058 22.9088C22.0706 22.9099 22.0833 22.9108 22.096 22.9114C22.1087 22.9119 22.1214 22.9122 22.1341 22.9122C22.1469 22.9121 22.1596 22.9118 22.1723 22.9111C22.185 22.9104 22.1976 22.9094 22.2103 22.9081C22.223 22.9068 22.2356 22.9052 22.2482 22.9033C22.2607 22.9014 22.2733 22.8992 22.2857 22.8967C22.2982 22.8942 22.3106 22.8914 22.3229 22.8882C22.3352 22.8851 22.3475 22.8817 22.3597 22.878C22.3718 22.8743 22.3839 22.8702 22.3958 22.8659C22.4078 22.8616 22.4196 22.857 22.4314 22.8521C22.4431 22.8472 22.4548 22.8421 22.4663 22.8366C22.4777 22.8311 22.4891 22.8254 22.5003 22.8194C22.5115 22.8134 22.5226 22.8071 22.5335 22.8005C22.5444 22.794 22.5551 22.7872 22.5657 22.7801C22.5762 22.773 22.5866 22.7657 22.5968 22.7581C22.607 22.7505 22.6171 22.7427 22.6269 22.7346C22.6367 22.7265 22.6464 22.7182 22.6558 22.7097C22.6652 22.7012 22.6744 22.6924 22.6834 22.6834C22.6924 22.6744 22.7012 22.6652 22.7097 22.6558C22.7183 22.6464 22.7266 22.6367 22.7347 22.6269C22.7427 22.6171 22.7506 22.6071 22.7581 22.5969C22.7657 22.5867 22.7731 22.5763 22.7801 22.5657C22.7872 22.5551 22.794 22.5444 22.8006 22.5335C22.8071 22.5226 22.8134 22.5115 22.8195 22.5003C22.8255 22.4891 22.8312 22.4778 22.8367 22.4663C22.8421 22.4548 22.8473 22.4432 22.8522 22.4315C22.8571 22.4197 22.8617 22.4078 22.866 22.3959C22.8703 22.3839 22.8743 22.3719 22.878 22.3597C22.8818 22.3475 22.8852 22.3353 22.8883 22.323C22.8914 22.3106 22.8943 22.2982 22.8968 22.2858C22.8993 22.2733 22.9015 22.2608 22.9035 22.2482C22.9054 22.2356 22.907 22.223 22.9082 22.2104C22.9095 22.1977 22.9105 22.185 22.9112 22.1723C22.9119 22.1596 22.9122 22.1469 22.9123 22.1342C22.9123 22.1215 22.9121 22.1088 22.9115 22.0961C22.911 22.0833 22.9101 22.0706 22.9089 22.058C22.9077 22.0453 22.9062 22.0327 22.9044 22.0201C22.9026 22.0075 22.9005 21.995 22.8981 21.9825C22.8956 21.97 22.8929 21.9576 22.8899 21.9452C22.8869 21.9329 22.8836 21.9206 22.8799 21.9084C22.8763 21.8962 22.8724 21.8841 22.8682 21.8721C22.864 21.8601 22.8595 21.8482 22.8547 21.8365C22.8499 21.8247 22.8448 21.813 22.8394 21.8015C22.8341 21.79 22.8284 21.7786 22.8225 21.7673C22.8166 21.756 22.8104 21.7449 22.8039 21.734C22.7975 21.723 22.7908 21.7122 22.7838 21.7016C22.7768 21.691 22.7695 21.6805 22.762 21.6702C22.7545 21.66 22.7468 21.6499 22.7388 21.64C22.7308 21.6301 22.7226 21.6204 22.7141 21.6109C22.7056 21.6014 22.6969 21.5921 22.688 21.5831L19.4708 18.3659Z"   fill="#45413E" >
                                </path>
                                </svg>
                            </button>
                        </form>
                        <div id="autocompleteSuggestions" style="display: none; border: 1px solid #ccc; background: #fff; max-height: 150px; overflow-y: auto;">
                            <!-- Suggestions will be added here dynamically -->
                        </div>
                    </div>
                </div>
            </span>
			<script src="js/AutoFix.js">

			</script>
			<span class="material-symbols-outlined need">
                <a href="viewCart">
<%--                    <img  name="img_cart" src="images/cart2.png" />--%>
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="25" height="25" viewBox="0 0 25 25" fill="none">
                        <g  clip-path="url(#clip-path-T6kpjYSDY2bLRuHoRgh-q)">
                        <path d="M8.09339 19.2249C8.40883 19.2249 8.70766 19.283 8.98989 19.3992C9.27211 19.5154 9.517 19.6773 9.72452 19.8848C9.93203 20.0923 10.0981 20.3372 10.2226 20.6195C10.3471 20.9017 10.4093 21.2005 10.4093 21.516C10.4093 21.8314 10.3471 22.1302 10.2226 22.4124C10.0981 22.6947 9.93203 22.9396 9.72452 23.1471C9.517 23.3546 9.27211 23.5206 8.98989 23.6451C8.70766 23.7696 8.40883 23.8319 8.09339 23.8319C7.76136 23.8319 7.45421 23.7696 7.17199 23.6451C6.88976 23.5206 6.64487 23.3546 6.43736 23.1471C6.22984 22.9396 6.06382 22.6947 5.9393 22.4124C5.81479 22.1302 5.75253 21.8314 5.75253 21.516C5.75253 21.2005 5.81479 20.9017 5.9393 20.6195C6.06382 20.3372 6.22984 20.0923 6.43736 19.8848C6.64487 19.6773 6.88976 19.5154 7.17199 19.3992C7.45421 19.283 7.76136 19.2249 8.09339 19.2249ZM18.4529 19.2747C18.7684 19.2747 19.0713 19.3328 19.3619 19.449C19.6524 19.5652 19.9014 19.7271 20.109 19.9346C20.3165 20.1422 20.4825 20.387 20.607 20.6693C20.7315 20.9515 20.7938 21.2503 20.7938 21.5658C20.7938 21.8812 20.7315 22.18 20.607 22.4623C20.4825 22.7445 20.3165 22.9894 20.109 23.1969C19.9014 23.4044 19.6524 23.5704 19.3619 23.6949C19.0713 23.8195 18.7684 23.8817 18.4529 23.8817C18.1375 23.8817 17.8386 23.8195 17.5564 23.6949C17.2742 23.5704 17.0293 23.4044 16.8218 23.1969C16.6143 22.9894 16.4483 22.7445 16.3237 22.4623C16.1992 22.18 16.137 21.8812 16.137 21.5658C16.137 21.2503 16.1992 20.9515 16.3237 20.6693C16.4483 20.387 16.6143 20.1422 16.8218 19.9346C17.0293 19.7271 17.2742 19.5652 17.5564 19.449C17.8386 19.3328 18.1375 19.2747 18.4529 19.2747ZM22.6366 5.12996C23.1014 5.12996 23.4625 5.19222 23.7198 5.31673C23.9772 5.44124 24.1598 5.59482 24.2677 5.77743C24.3756 5.96004 24.4252 6.15513 24.417 6.36264C24.4087 6.57016 24.3798 6.74864 24.3299 6.89805C24.2801 7.04747 24.1723 7.35459 24.0062 7.81945C23.8402 8.28431 23.6617 8.79482 23.4708 9.35097C23.2799 9.90712 23.089 10.4591 22.8981 11.007C22.7071 11.5549 22.5536 11.9865 22.4374 12.3019C22.2215 12.966 21.9518 13.4267 21.628 13.684C21.3043 13.9414 20.9017 14.07 20.4202 14.07L19.5486 14.07L17.9549 14.07L15.863 14.07L13.5222 14.07L7.34631 14.07L7.69494 16.3113L20.2708 16.3113C21.0677 16.3113 21.4662 16.6516 21.4662 17.3323C21.4662 17.6643 21.3873 17.9549 21.2296 18.2039C21.0719 18.4529 20.7606 18.5691 20.2957 18.5525L19.1004 18.5525L16.8093 18.5525L13.9206 18.5525L11.007 18.5525L8.59144 18.5525L7.2467 18.5525C6.91467 18.5525 6.63658 18.4778 6.41245 18.3284C6.18833 18.179 6.00156 17.9839 5.85214 17.7432C5.70273 17.5025 5.58237 17.241 5.49105 16.9588C5.39973 16.6765 5.32919 16.4109 5.27938 16.1619C5.26277 16.0623 5.21712 15.8215 5.14241 15.4397C5.06771 15.0579 4.97639 14.5805 4.86848 14.0078C4.76058 13.435 4.6402 12.7958 4.5074 12.0903C4.37459 11.3847 4.24176 10.675 4.10895 9.96109C3.79351 8.28431 3.43658 6.41661 3.03813 4.35797L1.17043 4.35797C0.921403 4.35797 0.713881 4.29572 0.547862 4.1712C0.381843 4.04669 0.244878 3.89728 0.136967 3.72296C0.0290555 3.54864 -0.0456526 3.36187 -0.0871572 3.16265C-0.128662 2.96343 -0.149414 2.78081 -0.149414 2.61479C-0.149414 2.28275 -0.0373518 2.00882 0.186773 1.793C0.410897 1.57717 0.713881 1.47756 1.09572 1.49416L3.6109 1.49416C3.94293 1.49416 4.20856 1.54397 4.40778 1.64358C4.60701 1.74319 4.76472 1.86771 4.88094 2.01712C4.99716 2.16654 5.08016 2.3201 5.12996 2.47782C5.17977 2.63554 5.22128 2.77251 5.25448 2.88872C5.28767 3.02153 5.32089 3.2083 5.35409 3.44903C5.38728 3.68975 5.4205 3.93463 5.4537 4.18366C5.5035 4.48249 5.55331 4.79793 5.60312 5.12996L22.6366 5.12996ZM21.7152 7.3463L6.12607 7.2965L6.99767 11.8039L20.0218 11.8288L21.7152 7.3463Z"   fill="#45413E" >
                        </path>
                        </g>
                        <defs>
                        <clipPath id="clip-path-T6kpjYSDY2bLRuHoRgh-q">
                        <path d="M0 25L25 25L25 0L0 0L0 25Z" fill="white"/>
                        </clipPath>
                        </defs>
                        </svg>
                </a>
            </span>
		</div>
	</nav>
</header>

	<div class="container">

		<form class="well form-horizontal" action="saveAccount" method="post"  id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Your Information!</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">First Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input  name="firstName" placeholder="First Name" class="form-control" value="${sessionScope.account.firstName}" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label" >Last Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input name="lastName" value="${sessionScope.account.lastName}" placeholder="Last Name" class="form-control"  type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
							<input name="email" value="${sessionScope.account.email}" placeholder="E-Mail Address" class="form-control"  type="text">
						</div>
					</div>
				</div>


				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Phone #</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
							<input name="phone"  value="${sessionScope.account.phone}" placeholder="(845)555-1212" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Address</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input name="address1" value="${sessionScope.account.address1}" placeholder="Address1" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Address</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input name="address2" value="${sessionScope.account.address2}" placeholder="Address2" class="form-control" type="text">
						</div>
					</div>
				</div>
				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">City</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input name="city" value="${sessionScope.account.city}" placeholder="City" class="form-control"  type="text">
						</div>
					</div>
				</div>

				<!-- Select Basic -->

				<div class="form-group">
					<label class="col-md-4 control-label">State</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
							<select name="state" class="form-control selectpicker" >
								<option value=" " >Please select your state</option>
								<option>Alabama</option>
								<option>Alaska</option>
								<option >Arizona</option>
								<option >Arkansas</option>
								<option >California</option>
								<option >Colorado</option>
								<option >Connecticut</option>
								<option >Delaware</option>
								<option >District of Columbia</option>
								<option> Florida</option>
								<option >Georgia</option>
								<option >Hawaii</option>
								<option >daho</option>
								<option >Illinois</option>
								<option >Indiana</option>
								<option >Iowa</option>
								<option> Kansas</option>
								<option >Kentucky</option>
								<option >Louisiana</option>
								<option>Maine</option>
								<option >Maryland</option>
								<option> Mass</option>
								<option >Michigan</option>
								<option >Minnesota</option>
								<option>Mississippi</option>
								<option>Missouri</option>
								<option>Montana</option>
								<option>Nebraska</option>
								<option>Nevada</option>
								<option>New Hampshire</option>
								<option>New Jersey</option>
								<option>New Mexico</option>
								<option>New York</option>
								<option>North Carolina</option>
								<option>North Dakota</option>
								<option>Ohio</option>
								<option>Oklahoma</option>
								<option>Oregon</option>
								<option>Pennsylvania</option>
								<option>Rhode Island</option>
								<option>South Carolina</option>
								<option>South Dakota</option>
								<option>Tennessee</option>
								<option>Texas</option>
								<option> Uttah</option>
								<option>Vermont</option>
								<option>Virginia</option>
								<option >Washington</option>
								<option >West Virginia</option>
								<option>Wisconsin</option>
								<option >Wyoming</option>
							</select>
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Zip Code</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input name="zip"  value="${sessionScope.account.zip}" placeholder="Zip Code" class="form-control"  type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Country</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input name="country" value="${sessionScope.account.country}" placeholder="Country" class="form-control"  type="text">
						</div>
					</div>
				</div>

<%--				<！-- profile -->--%>
				<div class="form-group">
					<label class="col-md-4 control-label">Language Preference:</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
							<select name="languagePreference" class="form-control selectpicker" >
								<option value=" " >Please select your languagePreference</option>
								<option value="english">english</option>
								<option value="japanese">japanese</option>
							</select>
						</div>
					</div>
				</div>

				<%--category--%>
				<div class="form-group">
					<label class="col-md-4 control-label">Favourite Category:</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
							<select name="favouriteCategoryId" class="form-control selectpicker" >
								<option value=" " >Please select your state</option>
								<option value="FISH">FISH</option>
								<option value="DOGS">DOGS</option>
								<option value="REPTILES">REPTILES</option>
								<option value="CATS">CATS</option>
								<option value="BIRDS">BIRDS</option>
							</select>
						</div>
					</div>
				</div>

				<%--enable&ndash;%&gt;--%>
				<div class="form-group">
					<label class="col-md-4 control-label">Enable MyList</label>
					<div class="col-md-4 enableGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input type="checkbox" name="listOption" class="form-control" value="${sessionScope.account.listOption}"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Enable MyBanner</label>
					<div class="col-md-4 enableGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
							<input type="checkbox" name="bannerOption" class="form-control" value="${sessionScope.account.bannerOption}"/>
						</div>
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
					</div>
				</div>
			</fieldset>
		</form>
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
