<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, mates</h1>
<table border="1"  class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <td><h2>Cars</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/cars/">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <td><h2>Drivers</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <td><h2>Manufacturers</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <td><h2>***</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
