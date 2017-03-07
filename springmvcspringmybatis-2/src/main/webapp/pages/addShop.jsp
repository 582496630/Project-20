<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<form action="addShop.action" method="post">
		<table>
			<tr>
				<td>shopName:<input type="text" name="shopName" />
				</td>
			</tr>
			<tr>
				<td>shopMany<input type="text" name="shopMany" />
				</td>
			</tr>
			<tr>
				<td>shopNum:<input type="text" name="shopNum" />
				</td>
			</tr>

			<tr>
				<td><input type="submit" name="submit" value="submit" /> <input
					type="reset" name="reset" value="reset" /></td>
			</tr>
		</table>
	</form>


</body>
</html>