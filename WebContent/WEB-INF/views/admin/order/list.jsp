<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã</th>
			<th>Khách hàng</th>
			<th>Ngày đặt hàng</th>
			<th>Địa chỉ</th>
			<th>Tổng tiền</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.id}</td>
				<td>${item.customer.id}</td>
				<td>${item.orderDate}</td>
				<td>${item.shipAddress}</td>
				<td>${item.amount}</td>
				<td><a class="btn btn-default"
					href="admin/order/edit.php?id=${item.id}">Sửa</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>