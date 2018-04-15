<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Kiểm kê theo loại</title>
	
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>

	<h2>Kểm kê ${group}</h2>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>${group}</th>
				<th>Tổng số lượng</th>
				<th>Tổng tiền</th>
				<th>Sản phẩm giá thấp nhất</th>
				<th>Sản phảm giá cao nhất</th>
				<th>Giá trung bình</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item[0]}</td>
					<td>${item[1]}</td>
					<td>$<f:formatNumber value="${item[2]}" maxFractionDigits="3"/></td>
					<td>$${item[3]}</td>
					<td>$${item[4]}</td>
					<td>$<f:formatNumber value="${item[5]}" maxFractionDigits="3"/></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>