<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/22 0022
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
<%--    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">--%>
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/people/updatePeople" method="post">
        <input type="hidden" name="no" value="${people.no}">
        <div class="form-group">
            <label>名字</label>
            <input type="text" class="form-control" value="${people.name}" name="name">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="text" class="form-control" name="tel" value="${people.tel}">
        </div>
        <button type="submit" class="btn btn-default">修改</button>
    </form>
</div>
</body>
</html>
