<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã</th>
			<th>Tên SP</th>
			<th>Giá SP</th>
			<th>Số lượng tồn kho</th>
			<th>Loại</th>
			<th>Hãng sản xuất</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.id}</td>
				<td>${item.name}</td>
				<td>${item.unitPrice}</td>
				<td>${item.unitsInStock}</td>
				<td>${item.category.nameVN}</td>
				<td>${item.supplier.companyName}</td>
				<td>
					<a class="btn btn-default" href="admin/product/edit.php?id=${item.id}">Sửa</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>