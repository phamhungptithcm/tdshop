<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Thống kê doanh thu</title>
</head>
<body>
	<h2>Doanh thu theo ${group}</h2>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>${group}</th>
				<th>Số lượng bán</th>
				<th>Doanh thu</th>
				<th>Giá thấp nhất</th>
				<th>Giá cao nhất</th>
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
		<tfoot>
			<tr>
				<th>Total: ?</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>