<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateShop</title>
</head>
<body>
	<form action="updateShop2.action?id=${idList}" method="post">
		<table>
		<c:forEach  var="shop" items="${shop}">
		<tr><td>ID:${idList}</td></tr>
			<tr>
				<td>shopName:<input type="text" name="shopName" value="${shop.shopName}" />
				</td>
			</tr>
			<tr>
				<td>shopMany:<input type="text" name="shopMany" value="${shop.shopMany}" />
				</td>
			</tr>
			<tr>
				<td>shopNum:<input type="text" name="shopNum" value="${shop.shopNum}" />
				</td>
			</tr>

			<tr>
				<td><input type="submit" name="submit" value="submit" /> <input
					type="reset" name="reset" value="reset" /></td>
			</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>