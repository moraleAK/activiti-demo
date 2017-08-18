<%@ page import="java.util.List" %>
<%@ page import="com.el.connect.entity.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="/js/jquery.min.js"></script>
<html>
<head>
    <meta charset="utf-8">
    <title>学生列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="../pages/bootstrap/js/bootstrap.min.js"></script>
    <link href="/pages/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/pages/theme/css/main.css" rel="stylesheet" media="screen">
</head>

<body>
<div class="w-index-dash container-fluid" style="">
    <div class="container container-padding">

    </div>
</div>


<div class="container w-index-chart content">

    <div class="row w-record">
        <div class="col-xs-6 w-title"><span class="w-title-text">学生信息</span></div>
        <div class="col-xs-6 w-more">
            <a href="/pages/add.jsp" target="_blank"
               class="w-title-text">添加</a>
        </div>
    </div>
    <%
        List<Student> students = (List<Student>) request.getAttribute("students");
    %>
    <table class="w-table" id="recentRecord">
        <thead>
        <th class="transactionType" style="text-align: left;padding-left: 30px;">id</th>
        <th class="transactionType" style="text-align: left;">name</th>
        <th class="transactionType" style="text-align: left;">age</th>
        <th class="transactionType" style="text-align: left;">time</th>
        <th class="transactionType" style="text-align: left;">memo</th>
        <th class="transactionType" style="text-align: left;"></th>
        </thead>
        <tbody>
        <%
            if (students != null && students.size() != 0) {
                for (int i = 0; i < students.size(); i++) {
        %>
        <tr>
            <td class="transactionType" style="text-align: left;padding-left: 30px;"><%=students.get(i).getId()%>
            </td>
            <td class="transactionType" style="text-align: left;"><%=students.get(i).getName()%>
            </td>
            <td class="transactionType" style="text-align: left;"><%=students.get(i).getAge()%>
            </td>
            <td class="transactionType" style="text-align: left;"><%=students.get(i).getTime()%>
            </td>
            <td class="transactionType" style="text-align: left;"><%=students.get(i).getMemo()%>
            <td class="transactionType" style="text-align: left;">
            <a href="/web/edit_student?id=<%=students.get(i).getId()%>" target="_blank">编辑</a>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%
    } else {
    %>
    </tbody>
    </table>
    <div style="text-align: center;height: 40px"><span style="line-height: 40px">无记录</span></div>
    <%
        }
    %>
    <hr>
</div>
</body>
</html>

