
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/people/add" method="post">
        <div class="form-group">
            <label>名字</label>
            <input type="text" class="form-control" placeholder="name" name="name">
        </div>
        <div class="form-group">
            <label>性别</label>
            <input type="text" class="form-control" placeholder="sex" name="sex">
        </div>
        <div class="form-group">
            <label>生日</label>
            <input type="text" class="form-control" name="birthday" placeholder="birthday">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="text" class="form-control" name="tel" placeholder="pwd">
        </div>
        <button type="submit" class="btn btn-default">增加</button>
    </form>
</div>
</body>
</html>
