<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="alert alert-warning">

    </div>
    <form action="${pageContext.request.contextPath}/people/like" method="post">
        <p style="float: left">
            <input type="text" class="form-control" placeholder="请输入" name="name">
            <button type="submit" class="btn btn-success">搜索</button>
        </p>
        <p style="float: right">
            <a href="${pageContext.request.contextPath}/people/all" role="button" class="btn btn-success">返回主页面</a>
        </p>
    </form>


    <table class="table table-secondary table-hover">
        <thead>
        <tr>
            <th>id</th>
            <th>名字</th>
<%--            <th>性别</th>--%>
            <th>密码</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="people" items="${people}">
            <tr>
                <td>${people.no}</td>
                <td>${people.name}</td>
                <td>${people.sex}</td>
                <td>${people.tel}</td>
                <td>
                    <span style="color:red;font-weight: bold">${error}</span>
                    <a href="${pageContext.request.contextPath}/people/deletePeople?no=${people.no}" role="button" class="btn btn-success">删除</a>
                    &nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/people/updatePage/?no=${people.no}" role="button" class="btn btn-success">修改</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="form-group">
        <a href="${pageContext.request.contextPath}/people/addPage" role="button" class="btn btn-success">点击添加</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${pageContext.request.contextPath}/people/count" role="button" class="btn btn-primary">总记录条数${counts}</a>
    </div>
</div>
</body>
</html>
