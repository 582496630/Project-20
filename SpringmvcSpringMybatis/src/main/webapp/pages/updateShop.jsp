<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品信息</title>
</head>
<body>
<form action="updateShop2.do" method="post">

<p>ID:${idList}</p>

<table>
<tr>
<td>
SHOPNum:<input type="text" name="shopNum" id="shopNum"/></td>
</tr>
<tr>
<td>
SHOPName:<input type="text" name="shopName" id="shopName"/></td>
</tr>
<tr>
<td>
SHOPMany:<input type="text" name="shopMany" id="shopMany"/></td>
</tr>

<tr>
<td><input type="submit" name="submit" id="submit" value="确认修改" />
<input type="reset" name="reset" id="reset" value="reset" />
</td>
</tr>
</table>
</form>




</body>
</html>