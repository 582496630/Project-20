<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息</title>
<script src="script/common.js"></script>
<script type="text/javascript">
	function addShop() {
		window.location.href = ctx + "/pages/addShop.jsp";
	}
	function selectShop() {
		window.location.href = ctx + "/pages/selectShop.do";
	}
function updateShop() {
	var id = '${shop.id}',
	$.ajax({
		type : "POST",
		async : true,
		url : ctx + "/updateShop1.do",
		data : {
			"id" : id,
		},
		error : function() {
			hideLoadingDialog();
			showmsg("登录异常");
		},
		success : function(res) {

				showmsg("恭喜你，登录成功！");
		}
	});
	
}
</script>

</head>
<body>
	<input type="button" value="addShop" onclick="addShop()" />
	<input type="button" value="selectShop" onclick="selectShop()" />
	

	<table border="1">
		<tr>
			<td>count</td>
			<td>id</td>
			<td>shop_num</td>
			<td>shop_name</td>
			<td>shop_many</td>
			<td colspan="2">操作</td>
		</tr>

		<c:forEach var="shop" items="${list}" varStatus="vs">
			<tr>
				<td>${vs.count}</td>

				<td>${shop.id}</td>
				<td>${shop.shopNum}</td>
				<td>${shop.shopName}</td>
				<td>${shop.shopMany}</td>
				<td><input type="button" value="updateShop" onclick="updateShop()" /></td>
				<td><a href="deleteShop.do?id=${shop.id}">delete</a>
				</td>
					
			</tr>
		</c:forEach>


	</table>




</body>
</html>