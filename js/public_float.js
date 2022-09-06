$(function () {
    /*显示用户名*/
    var username = $.cookie("username");
    if(username == null){
        $("#theName").before('<p class="grid" id="mz">' + "请登录" + "</p>");

    }else{
        $("#theName").before('<p class="grid" id="mz">' + username + "</p>");

    }

    /*购物车按钮*/
    $("#gwc").click(function () {
        var userid = $.cookie("userid")
        // console.log(userid);
        if (userid == null) {
            alert("请先登录")
            window.location.href = "download.html";
        } else {
            // var userid = $.cookie("userid");
            window.location.href = "cart.html";
        }
    })

    /*订单记录按钮*/
    $("#order").click(function () {
        var userid = $.cookie("userid")
        if(userid == null){
            alert("请先登录")
        }else{
            // console.log(userid);
            window.location.href = "orderDetail.html";
        }
    })

    /*悬浮*/
    $(".float1").hide()
    $("#nav-grid1,#float11").hover(function () {
        $("#float11").show();
        $("#nav-grid1").css("border-bottom","2px solid black");
    }, function () {
        $(".float1").hide();
        $("#nav-grid1").css("border-bottom","none");

    })
    $("#nav-grid2,#float12").hover(function () {
        $("#float12").show();
        $("#nav-grid2").css("border-bottom","2px solid black");
    }, function () {
        $(".float1").hide();
        $("#nav-grid2").css("border-bottom","none");
    })
    $("#nav-grid3,#float13").hover(function () {
        $("#float13").show();
        $("#nav-grid3").css("border-bottom","2px solid black");
    }, function () {
        $(".float1").hide();
        $("#nav-grid3").css("border-bottom","none");

    })
    $(".float1-top-grid a").hover(function () {
        $(this).css("color", "black");
    }, function () {
        $(".float1-top-grid a").css("color", "#666666")
    })

    $("#head-img").hover(function(){
        $(this).css("opacity","0.5");
    },function(){
        $(this).css("opacity","1")
    })
})