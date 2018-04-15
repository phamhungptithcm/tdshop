<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hóa đơn</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>Mã</th>
				<th>Ngày đặt hàng</th>
				<th>Địa chỉ nhận</th>
				<th>Giá tiền</th>
				<th>Ghi chú</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${orders}">
				<tr>
					<td>${item.id}</td>
					<td>${item.orderDate}</td>
					<td>${item.shipAddress}</td>
					<td>${item.amount}</td>
					<td>${item.orderStatus.name}</td>
					<td>
						<a href="order/detail/${item.id}.php">Detail</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>