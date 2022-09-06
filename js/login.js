$(function () {
    $("#bb").click(function () {
        var name = $(".name").val();
        var pwd = $(".pwd").val();
        $.ajax({
            method:"POST",
            url:"./php/manage.php", 
            data:{name: name, pwd: pwd, type: "login"}, 
            dataType:"JSON",
            success:function (data) {
                if (data == "fail") {
                    alert("登陆失败，请重新输入！");
                    $(".name").val("");
                    $(".pwd").val("");
                } else {
                    // console.log(data)
                    for (var i in data) {
                        // console.log(data[i])
                        $.cookie("admin_name", data[i].admin_name);
                    }
                    window.location.href = "manage.html";
                }
            }
        })
    })
})