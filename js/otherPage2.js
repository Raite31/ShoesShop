$(function () {
    // 本文件中所有注释都是解释接下来的代码

    /*引用菜单栏文件*/
    $("#head").load("public_float.html");

    /*引用底部文件*/
    $("#foot").load("public_foot.html");

    

    /*设置固定导航栏*/
    var head = $("#bigHead");
    // 如果没有框架 那就是你浏览的当前浏览器的窗口
    var win = $(window);
    // $(document)是当前文档，就是你看到的整个网页
    var sc = $(document);
    // .scroll()是对元素滚动的次数进行计数
    win.scroll(function () {
        // .scrollTop()是元素的垂直滚动条位置
        if (sc.scrollTop() >= 1) {
            head.addClass("fixed");
        } else {
            head.removeClass("fixed");
        }
    })

    /*搜索功能实现*/
    var list1 = $("#main ul");
    $(".search_btn").click(function () {
        var name = $(".search_input").val();
        $.post("./php/shop.php", {name: name, type: "search"}, function (data) {
            if (data == "0") {
                alert("无此商品")
            } else {
                /*清除原本商品然后加上搜索结果的商品*/
                $("#main ul li").remove();
                for (var i in data) {
                    var nodeli = "<a href='#'><li data-id=" + data[i].shop_id + "> <img src='" + data[i].shop_pic + "'> <span class='name'>"
                        + data[i].shop_name + "</span><br> <span class = 'price'>价格：￥" + data[i].shop_price + "</span><br>" +
                        "&nbsp;&nbsp;&nbsp;购买数量：<input type='text' class='num' size='2' value='"
                        + 1 + "'><br><button class='add'>添加购物车</button> </li></a>";
                    list1.append(nodeli);
                    $("#main #main-shoes li").css({
                        "width": "13%",
                        "height": "240px",
                        "float": "left",
                        "margin": "40px",
                        "padding-bottom": "10px",
                        "text-align": "center",
                        "background-color": "rgb(229 229 229)",
                        "color": "black",
                        "font-family": "Microsoft JhengHei",
                    })
                    $("#main ul li span").css({
                        "margin-top": "10px",
                    })
                    $("#main ul li .name").css({
                        "color": "black",
                        "font-size": "15px",
                        "font-weight":"bold"
                    })
                }
            }
        }, 'json')
    })

    /*商品展示*/
    var list = $("#main ul");
    // alert(userid);
    $.post("./php/shop.php", {type: "query2"}, function (data) {
        // console.log("商品展示:", data);
        if (data == "0") {
            alert("暂无商品")
        } else {
            for (var i in data) {
                var nodeli = "<a href='#'><li data-id=" + data[i].shop_id + "> <img src='" + data[i].shop_pic + "'> <span class='name'>"
                    + data[i].shop_name + "</span><br> <span class = 'price'>价格：￥" + data[i].shop_price + "</span><br>" +
                    "&nbsp;&nbsp;&nbsp;购买数量：<input type='text' class='num' size='2' value='"
                    + 1 + "'><br><button class='add'>添加购物车</button> </li></a>";
                list.append(nodeli);
                $("#main ul li").css({
                    "width": "13%",
                    "height": "240px",
                    "float": "left",
                    "margin": "40px",
                    "padding-bottom": "10px",
                    "text-align": "center",
                    "background-color": "rgb(229 229 229)",
                    "color": "black",
                    "font-family": "Microsoft JhengHei",
                })
                $("#main ul li span").css({
                    "margin-top": "15px"
                })
                $("#main ul li .name").css({
                    "color": "black",
                    "font-size": "15px",
                    "font-weight":"bold"

                })
            }
        }
    }, 'json');

    /*点击商品的跳转*/
    $("#main #main-shoes").on("click", "img", function () {
        var id = $(this).parent("li").attr("data-id");
        console.log("???:",id);
        window.location.href = "shopDetailPage.html?id"+id;
    })

    /*商品交互效果*/
    $("#main ul").on("mouseover", "li", function () {
        $(this).css("boxShadow", "2px 3px 4px #C0C0C0")
    })
    $("#main ul").on("mouseout", "li", function () {
        $(this).css("boxShadow", "0 0 0")
    })

    /*添加购物车*/
    var username = $.cookie("username")
    var userid = $.cookie("userid")
    var shop2 = [];
    $("#main ul").on("click", '.add', function () {
        var amount = $(this).siblings(".num").val();
        var id = $(this).parent("li").attr("data-id");
        // 把商品的id放入数组里，还需要把商品数量放入数组才完整
        shop2.push($(this).parent("li").attr("data-id"))
        localStorage.setItem("shop2", JSON.stringify(shop2));
        if (userid == null) {
            alert("请先登录/注册！");
        } else {
            $.post("./php/cart.php", {userid: userid, id: id, amount: amount, type: "insert"}, function (data) {
                if (data == 'exist') {
                    alert('该商品已存在购物车中，无需重复添加！')
                } else {
                    alert('该商品成功添加购物车！')
                }
            })
        }
    })
})