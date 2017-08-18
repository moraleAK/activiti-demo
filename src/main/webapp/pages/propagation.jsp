<%@ page import="com.el.connect.entity.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../pages/bootstrap/js/bootstrap.min.js"></script>

    <meta name="description" content="">
    <meta name="author" content="">
    <title>添加学生信息</title>
    <link rel="icon" href="../../favicon.ico">
    <link href="/pages/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/pages/theme/css/main.css" rel="stylesheet" media="screen">
    <script src="/js/jquery.min.js"></script>

</head>

<body style="background-color: #eee">
<%
    //Student student = (Student) request.getAttribute("student");
%>
<form method="post" action="/web/propagation_test">
    <div style="margin-top: 20px">
        <div class="container content">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">添加学生</h3>
                </div>
                <div class="panel-body" style="padding-top: 12px;">
                    <%--<div>
                        <span class="pannel-name">id：</span>
                        <input type="text" id="id" readonly name="name" class="form-control inputbox"/>
                    </div>--%>
                    <div style="padding-bottom: 5px;margin-top: 5px"><b>基本信息</b></div>
                    <div>
                        <span class="pannel-name">name：</span>
                        <input type="text" id="name" name="name" class="form-control inputbox" value="${studen.name}"/>
                    </div>
                    <div>
                        <span class="pannel-name">age：</span>
                        <input type="text" id="age" name="age" class="form-control inputbox" value="${studen.age}"/>
                    </div>
                    <div>
                        <span class="pannel-name">time：</span>
                        <input type="text" id="time" name="time" class="form-control inputbox" value="${studen.time}"/>
                    </div>
                    <div>
                        <span class="pannel-name">memo：</span>
                        <input type="text" id="memo" name="memo" class="form-control inputbox" value="${studen.memo}"/>
                    </div>
                    <div style="padding-bottom: 5px;margin-top: 5px"><b>execute params</b></div>
                    <div>
                        <span class="pannel-name">propagation：</span>
                        <select class="form-control inputbox" name="propagation" value="">
                            <option value="1">REQUIRED</option>
                            <option value="2">REQUIRES_NEW</option>
                            <option value="3">SUPPORTS</option>
                            <option value="4">NOT_SUPPORTED</option>
                            <option value="5">NEVER</option>
                            <option value="6">NESTED</option>
                            <option value="7">MANDATORY</option>
                        </select>
                    </div>
                    <td style="min-width: 180px;border-bottom: 1px solid #ddd;"></td>
                    <td width="70%" style="border-bottom: 1px solid #ddd">
                        <div><span style="color: red">${error}</span></div>
                    </td>
                    <td width="30%" style="border-bottom: 1px solid #ddd;"></td>
                </div>

                <div class="panel-footer" style="text-align: right;">
                    <a href="/web/load_students" class="btn btn-default" style="margin-right: 15px;width:120px;">返回</a>
                    <input type="submit" class="btn btn-primary btn-padding" style="width: 120px;"/>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-footer" style="text-align: center;padding-right: 500px">
        插入一条数据前后读取的记录条数是否一致：${result}
    </div>
</form>
</body>
</html>
</script>
