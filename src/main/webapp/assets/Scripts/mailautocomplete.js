var MailFix = ["@qq.com", "@163.com", "@126.com", "@189.cn", "@sina.com", "@hotmail.com", "@gmail.com", "@sohu.com", "@21cn.com", "@139.com"];
$(function () {
    $("input[nodetype='email']").bind("blur", function () {
        if ($(this).parent().find("ul").get(0) != undefined) {
            $(this).val($(this).parent().find("li[class='curr']").text());
            $(this).parent().find("ul").remove()
        }
    });
    $("input[nodetype='email']").keyup(function (a) {
        if (a.keyCode == 13) {
            if ($(this).parent().find("ul").get(0) != undefined) {
                $(this).val($(this).parent().find("li[class='curr']").text());
                $(this).parent().find("ul").remove();
                if ($("input[nodetype='next']").get(0) != undefined) {
                    $("input[nodetype='next']").focus()
                }
            } else {
                if ($("input[nodetype='next']").get(0) != undefined) {
                    $("input[nodetype='next']").focus()
                }
            }
        } else if (a.keyCode == 38 || a.keyCode == 40) {
            var b = $(this).parent().find("li");
            var c;
            for (var i = 1; i < b.length; i++) {
                if ($(b[i]).hasClass("curr") == true) {
                    c = i;
                    break
                }
            };
            if (a.keyCode == 38) {
                if (c == 1) {
                    c = b.length - 1
                } else {
                    c = c - 1
                }
            } else {
                if (c == b.length - 1) {
                    c = 1
                } else {
                    c = c + 1
                }
            };
            $(this).parent().find("li").removeClass("curr");
            $($(this).parent().find("li")[c]).addClass("curr")
        } else {
            var d, itemHtml;
            var e, mailValue;
            mailValue = $(this).val();
            mailValue = mailValue.replace(/^\s*|\s*$/gi, "");
            mailValue = mailValue.replace("<", "&lt;");
            mailValue = mailValue.replace(">", "&gt;");
            $(this).parent().find("ul").remove();
            if (mailValue != "" && mailValue.indexOf("@") > -1) {
                d = "";
                if (mailValue.indexOf("@") > -1) {
                    e = mailValue.split("@")[0]
                } else {
                    e = mailValue
                };
                for (var i = 0; i < MailFix.length; i++) {
                    itemHtml = e + MailFix[i];
                    if (itemHtml.indexOf(mailValue) > -1 && itemHtml != mailValue) {
                        d += "<li>" + itemHtml + "</li>"
                    }
                };
                d = "<li class='note'>请选择邮箱类型</li><li class='curr'>" + mailValue + "</li>" + d;
                d = "<ul style='width:" + eval("(" + $(this).attr("config") + ")").width + "px;top:" + eval("(" + $(this).attr("config") + ")").height + "px;'>" + d + "</ul>";
                $(this).parent().append(d);
                $(this).parent().find("ul").click(function () {
                    $(this).parent().find("input").val($(this).find("li[class='curr']").text());
                    $(this).remove()
                });
                $(this).parent().find("li").mouseover(function () {
                    if ($(this).hasClass("note") == false) {
                        $(this).parent().find("li").removeClass("curr");
                        $(this).addClass("curr")
                    }
                })
            }
        }
    })
    $("#Email").keydown(function (e) {
        if (e.keyCode == 32) {
            return false;
        }
    });
});