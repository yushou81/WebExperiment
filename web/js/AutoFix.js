$(document).ready(function () {
    // 监听用户输入
    $('#searchInput').on('input', function () {
        var keyword = $(this).val(); // 获取输入框的值

        if (keyword.length > 0) {
            // 发送 GET 请求到 autoFix
            $.ajax({
                url: 'autoFix', // 你的后端接口地址
                type: 'GET',
                data: { keyword: "%"+keyword+"%" }, // 传递输入的关键字
                success: function(response) {
                    // 假设返回的数据是一个字符串数组
                    var suggestions = response;
                    console.log(suggestions); // 打印建议
                    displaySuggestions(suggestions);
                },
                error: function() {
                    $('#autocompleteSuggestions').empty().hide(); // 出现错误时隐藏建议框
                }
            });
        } else {
            $('#autocompleteSuggestions').empty().hide(); // 输入框为空时隐藏建议框
        }
    });

    // 展示建议
    function displaySuggestions(suggestions) {
        var suggestionBox = $('#autocompleteSuggestions');
        suggestionBox.empty().show(); // 显示建议框

        // 如果没有匹配的建议
        if (suggestions.length === 0) {
            suggestionBox.append('<div>No suggestions found</div>');
        } else {
            // 遍历结果并创建每一项
            suggestions.forEach(function(item) {
                var suggestionItem = $('<div>')
                    .addClass('suggestion-item')
                    .text(item)
                    .on('click', function() {
                        $('#searchInput').val(item); // 用户点击后填充输入框
                        suggestionBox.empty().hide(); // 隐藏建议框
                    });
                suggestionBox.append(suggestionItem);
            });
        }
    }

    // 防止表单提交时重新加载页面
    $('#searchForm').on('submit', function(event) {
        event.preventDefault();
        // 这里可以写你的搜索提交逻辑，通常会是通过 Ajax 或直接提交表单
    });
});
