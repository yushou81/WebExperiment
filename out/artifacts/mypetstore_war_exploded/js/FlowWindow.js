$(document).ready(function() {
    // 鼠标进入图片时，显示悬浮窗
    $('.book-photo').mouseenter(function(event) {
        var productId = $(this).data('product-id');
        var tooltip = $('#tooltip-' + productId);

        // 获取鼠标的位置
        var mouseX = event.pageX;
        var mouseY = event.pageY;

        // 设置悬浮窗的位置为鼠标的位置（调整为左上角）
        tooltip.css({
            top: mouseY + 0 + 'px', // 鼠标位置 + 偏移
            left: mouseX - 600 + 'px'  // 鼠标位置 + 偏移
        }).show();

        // 触发 AJAX 请求，获取产品的详细信息
        $.ajax({
            url: "viewProduct", // Servlet 的路径
            method: "GET",
            data: { productId: productId }, // 将 productId 作为请求参数
            dataType: "json", // 指定返回数据类型为 JSON
            success: function(response) {
                console.log("Received itemList:", response);
                // 假设返回的 response 是一个 JSON，包含更多的信息
                tooltip.empty();
                // 遍历 response 数组，生成每个产品的信息
                var num = response.length;

                var p1 = `<p><strong>Product Num: ${num} </strong></p>`;

                var p2String=''
                $.each(response, function(index, item) {
                    p2String += item.itemId;
                    ;


                });
                var p2 = `<p><strong>Product Content: ${p2String} </strong></p>`;;
                console.log(p1)
                console.log(p2)
                // 动态添加内容到悬浮窗
                tooltip.append(p1,p2);
            },
            error: function() {
                tooltip.html('<p>Error loading details.</p>');
            }
        });
    });

    // 鼠标离开图片时，隐藏悬浮窗
    $('.book-photo').mouseleave(function() {
        var productId = $(this).data('product-id');
        $('#tooltip-' + productId).hide();
    });
});
