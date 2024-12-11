function getCart(username) {
    $.ajax({
        url: 'getCart?username=' + username,
        type: 'GET',
        dataType: 'json',
        success: function(cart) {
            // 在这里处理购物车数据
            console.log(cart);
            displayCart(cart);
        },
        error: function(xhr, status, error) {
            console.error('Error getting cart:', error);
        }
    });
}

function renewCart(username,itemId,quantity) {
    $.ajax({
        url: 'renewCart?username=' + username + "&itemId=" + itemId + "&quantity=" + quantity,
        type: 'GET',
        dataType: 'json',
        success: function(cart) {
            // 在这里处理购物车数据
            console.log(cart);
            displayCart(cart);
        },
        error: function(xhr, status, error) {
            console.error('Error getting cart:', error);
        }
    });
}

function removeCart(username,itemId,quantity) {
    $.ajax({
        url: 'removeCart?username=' + username + "&itemId=" + itemId,
        type: 'GET',
        dataType: 'json',
        success: function(cart) {
            // 在这里处理购物车数据
            console.log(cart);
            displayCart(cart);
        },
        error: function(xhr, status, error) {
            console.error('Error getting cart:', error);
        }
    });
}

// 在页面加载时调用 getCart 函数
window.onload = function() {
    var username = "${sessionScope.account.username}";
    getCart(username);
};

function displayCart(cart) {
    // 使用 forEach 遍历值
    const cartItemsList = [];
    // 使用 Object.entries 遍历
    Object.entries(cart.cartItemMap).forEach(([key, value]) => {
        console.log(`Item ID:`, key);
        console.log("Item Details:", value);
        cartItemsList.push(value);
    });

    $('.cartItems').empty();
    // 创建 tr 元素
    var tr = $('<tr>');
    var th1 = $('<th>').text('Item ID');
    var th2 = $('<th>').text('Product ID');
    var th3 = $('<th>').text('Description');
    var th4 = $('<th>').text('In Stock?');
    var th5 = $('<th>').text('Quantity');
    var th6 = $('<th>').text('List Price');
    var th7 = $('<th>').text('Total Cost');
    var th8 = $('<th>').text('Remove');
    // 将 th 元素添加到 tr 中
    tr.append(th1, th2, th3, th4, th5, th6, th7,th8);
    // 将 tr 元素添加到 tbody 中
    $('.cartItems').append(tr);

    //如果没有就显示空的tr
    var emptyTr = $('<tr>');
    var emptyTd = $('<td>').text('Your cart is empty.')
    emptyTr.append(emptyTd);
    if(cartItemsList.length === 0) {
        $('.cartItems').append(emptyTr);
    }
    // 遍历返回的 itemList 并生成对应的书卡片
    $.each(cartItemsList, function (index, cartItem) {
        // 提取 item 信息
        var item = cartItem.item;
        // 提取其他属性信息
        var quantity = cartItem.quantity;
        var total = cartItem.total;
        var inStock = cartItem.inStock;
        var raw = $('<tr>');
        var td1 = $('<td>').text(item.itemId);
        var td2 = $('<td>').text(item.product.productId);
        var td3 = $('<td>').text(item.attribute1 +' '+ item.attribute2 +' '+ item.attribute3 +' '+ item.attribute4 +' '+ item.attribute5 +' '+ item.product.name);
        var td4;
        if(inStock === true) {
            td4 = $('<td>').text("yes");
        } else {
            td4 = $('<td>').text("no");
        }
        var quantityInput = $('<input>')
            .attr('type', 'text')
            .attr('name', item.itemId)
            .val(quantity)
            .on('change', function () {
                // 获取输入框的值
                var newQuantity = $(this).val();
                // 使用 AJAX 访问 addItemToCart
                $.ajax({
                    url: "renewCart", // Servlet 的路径
                    method: "GET",
                    data: { username: "${sessionScope.account.username}",itemId: item.itemId,quantity: newQuantity }, // 将 itemId 作为请求参数
                    success: function (response) {
                        alert('Item quantity update successfully!');
                    },
                    error: function (xhr, status, error) {
                        alert('Failed to update item quantity:'+ error);
                    }
                });
            });
        var td5 = $('<td>');
        td5.append(quantityInput);
        var td6 = $('<td>').text(item.listPrice);
        var td7 = $('<td>').text(total);


        // 创建图片元素并设置其 src 和 alt 属性
        var img = $('<img>')
            .attr('src', item.img)
            .attr('alt', '')
            .addClass('book-card-img');

        // 创建按钮并添加点击事件
        var removeButton = $('<button>')
            .addClass('removeBtn')
            .text('Remove')
            .on('click', function () {
                // 使用 AJAX 访问 addItemToCart
                $.ajax({
                    url: "removeCart", // Servlet 的路径
                    method: "GET",
                    data: { username: "${sessionScope.account.username}" ,itemId: item.itemId }, // 将 itemId 作为请求参数
                    success: function (response) {
                        alert('Item remove to cart successfully!');
                    },
                    error: function (xhr, status, error) {
                        alert('Failed to remove item to cart: ' + error);
                    }
                });
            });

        var td8 = $('<td>').append(removeButton);
        // 将 td 元素添加到 tr 中
        raw.append(td1, td2, td3, td4, td5, td6,td7,td8);
        // 将 book-card 添加到页面中的某个容器中，例如 #book-cards 容器
        $('.cartItems').append(raw);
    });
}