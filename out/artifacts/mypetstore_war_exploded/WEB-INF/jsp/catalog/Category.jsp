<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<!-- Include jQuery library -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>
		<link rel="StyleSheet" href="css/TopAndBottom.css" type="text/css" media="screen" />
		<link rel="StyleSheet" href="css/Category.css" type="text/css" media="screen" />
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
						<a href="viewCategory?categoryId=DOGS">
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
						<a href="viewCategory?categoryId=CATS">
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
						<a href="viewCategory?categoryId=BIRDS">
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
						<a href="viewCategory?categoryId=FISH">
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

<div id="BackLink">
    <a href="main">Return to Main Menu</a>
</div>

<div class="book-slide">
	<div class="book js-flickity" data-flickity-options='{ "wrapAround": true }'>
		<c:forEach var="product" items="${sessionScope.productList}">
			<div class="book-cell">
				<div class="book-img">
					<img src="${product.img}" alt="" class="book-photo">
				</div>
				<div class="book-content">
					<div class="book-title">${product.name}</div>
					<div class="book-author">${product.productId}</div>
					<div class="rate">
						<fieldset class="rating">
							<input type="checkbox" id="star5" name="rating" value="5" />
							<label class="full" for="star5"></label>
							<input type="checkbox" id="star4" name="rating" value="4" />
							<label class="full" for="star4"></label>
							<input type="checkbox" id="star3" name="rating" value="3" />
							<label class="full" for="star3"></label>
							<input type="checkbox" id="star2" name="rating" value="2" />
							<label class="full" for="star2"></label>
							<input type="checkbox" id="star1" name="rating" value="1" />
							<label class="full" for="star1"></label>
						</fieldset>
						<span class="book-voters">1.987 voters</span>
					</div>
					<div class="book-sum">${product.description}</div>

					<div ><button id="bookss" class="book-see" onclick="getItemList('${product.productId}')"> See The Dog</button></div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
	<div class="main-wrapper">
		<div class="popular-books">
			<div class="main-menu">
				<div class="genre">Popular by Genre</div>
			</div>
			<div class="book-cards">
<%--				用了ajax--%>
			</div>
		</div>
	</div>
</div>

<script>
	function getItemList(productId) {
		// 发起 AJAX 请求，动态将 productId 添加到 URL 参数中
		$.ajax({
			url: "viewProduct", // Servlet 的路径
			method: "GET",
			data: { productId: productId }, // 将 productId 作为请求参数
			dataType: "json", // 指定返回数据类型为 JSON
			success: function (response) {
				console.log("Received itemList:", response);

				// 清空之前的内容，避免重复添加
				$('.book-cards').empty();

				// 遍历返回的 itemList 并生成对应的书卡片
				$.each(response, function (index, item) {
					// 创建一个新的 div 元素作为 book-card
					var bookCard = $('<div>').addClass('book-card');

					// 创建内容包装器 div
					var contentWrapper = $('<div>').addClass('content-wrapper');

					// 创建图片元素并设置其 src 和 alt 属性
					var img = $('<img>')
							.attr('src', item.img)
							.attr('alt', '')
							.addClass('book-card-img');
					// 将图片添加到内容包装器中
					contentWrapper.append(img);

					// 创建卡片内容 div
					var cardContent = $('<div>').addClass('card-content');

					// 创建书名 div 并设置其文本内容
					var bookName = $('<div>').addClass('book-name').text(item.itemId);

					// 创建作者 div 并设置其文本内容（这里使用 product 名称）
					var bookBy = $('<div>').addClass('book-by').text(item.product.name);

					// 创建评分字段集和相关元素
					var rate = $('<div>').addClass('rate');
					var ratingFieldset = $('<fieldset>').addClass('rating book-rate');
					for (var i = 1; i <= 5; i++) {
						var starId = 'star-c' + i + '-' + index; // 为每个星星加上唯一 ID
						var starInput = $('<input>')
								.attr('type', 'checkbox')
								.attr('id', starId)
								.attr('name', 'rating')
								.val(i);
						var starLabel = $('<label>')
								.addClass('full')
								.attr('for', starId);
						ratingFieldset.append(starInput, starLabel);
					}
					var bookVoters = $('<span>')
							.addClass('book-voters card-vote')
							.text('1,987 voters');
					rate.append(ratingFieldset, bookVoters);

					// 创建书籍摘要 div 并设置其文本内容（显示 attribute 和 product.description）
					var bookSum = $('<div>')
							.addClass('book-sum card-sum')
							.text(
									item.attribute1 +
									' - ' +
									(item.product.description || 'No description available')
							);

					// 将所有内容添加到卡片内容 div 中
					cardContent.append(bookName, bookBy, rate, bookSum);

					// 将卡片内容添加到内容包装器中
					contentWrapper.append(cardContent);

					// 将内容包装器添加到 book-card 中
					bookCard.append(contentWrapper);

					// 将 book-card 添加到页面中的某个容器中，例如 #book-cards 容器
					$('.book-cards').append(bookCard);
				});
			},
			error: function (xhr, status, error) {
				console.error("Failed to fetch itemList:", error);
			}
		});
	}

	// 示例调用
	getItemList('K9-BD-01');
</script>
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
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

