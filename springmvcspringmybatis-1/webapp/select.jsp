<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selectShop</title>
</head>
<body>
<div>
		<p>产品详情</p>
		<table border="1">
			<tr>
				<td>序号</td>
				<td>id</td>
				<td>shopName</td>
				<td>shopPrice</td>
				<td>shopNum</td>
				<td>删除</td>
				<td>修改</td>

			</tr>

			<c:forEach var="shop" items="${allShopList}" varStatus="vs">
				<tr>
					<!-- vs.count  计数 -->
					<td>${vs.count}</td>
					<td>${shop.id}</td>
					<td>${shop.name}</td>
					<td>${shop.price}</td>
					<td>${shop.num}</td>
					<td><a href="deleteShop.action?id=${shop.id}">delete</a>
					</td>
					<td><a href="updateShop.action?id=${shop.id}">update</a></td>
				</tr>

			</c:forEach>
		</table>
	</div>




</body>
</html>