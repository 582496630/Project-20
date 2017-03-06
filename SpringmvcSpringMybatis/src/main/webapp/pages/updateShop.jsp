<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品信息</title>

<script src="script/common.js"></script>
<script src="script/jquery.min.js"></script>
<script type="text/javascript">

function updateShop() {
	var id =$('#id').val();
	var shopNum = $('#shopNum').val();
	var shopName = $('#shopName').val();
	var shopMany = $('#shopMany').val();
	
	$.ajax({
		type : "POST",
		async : true,
		url : ctx + "/updateShop2.do",
		data : {
			"id" : id,
			"shopNum" : shopNum,
			"shopName" : shopName,
			"shopMany" : shopMany
		},
		error : function() {
			hideLoadingDialog();
			showmsg("修改失败");
		},
		success : function(data) {

			hideLoadingDialog();
			showmsg("修改成功");
		//	window.location.href = ctx + "/pages/updateShop2.do";
		}
	});
	
}
</script>

</head>
<body>
<form action="updateShop2.do" method="post">
<h3>ID:${list}</h3>
<input type="text"  name="id" id="id"/>
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
<td><input type="submit" name="submit" id="submit" value="确认修改" onclick="updateShop()" />
<input type="reset" name="reset" id="reset" value="reset" />
</td>
</tr>
</table>
</form>




</body>
</html>