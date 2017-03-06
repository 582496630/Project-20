<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateShop</title>
</head>
<body>
	<form action="updateShop.action" method="post">
		<table>
		<tr><td>ID:${idList} </td></tr>
			<tr>
				<td>shopName:<input type="text" name="shopName" />
				</td>
			</tr>
			<tr>
				<td>shopPrice:<input type="text" name="shopPrice" />
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