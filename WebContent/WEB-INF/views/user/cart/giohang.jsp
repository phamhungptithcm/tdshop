<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Giỏ hàng</title>
</head>
<body>
	<div class="row">
		<div class="col-sm-8">
			<table class="table">
				<thead>
					<tr>
						<th>Tên sản phẩm</th>
						<th>Giá</th>
						<th>Giảm giá</th>
						<th>Số lượng</th>
						<th>Tổng tiền</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${cart.item}">
						<tr data-item-id="${item.id}" data-item-price="${item.unitPrice}"
							data-item-discount="${item.discount}">
							<td>${item.name}</td>
							<td><fmt:formatNumber value="${model.unitPrice*22800}"
									maxFractionDigits="0"></fmt:formatNumber> VNĐ</td>
							<td>${item.discount*100}%</td>
							<td><input value="${item.quantity}" style="width: 40px"
								type="number" min="1"></td>
							<td class="nn-item-amount"><strong style="color: #DC2020"><fmt:formatNumber
										value="${item.amount}" maxFractionDigits="0"></fmt:formatNumber>
									VNĐ</strong></td>
							<td>
								<button class="btn btn-sm btn-warning">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-4">
			<div>
				<h5>
					<strong>Khuyến mãi</strong>
				</h5>
				<div>
					<ul>
						<li>Tặng tai nghe bluetooth samsung gear</li>
						<li>Tặng sạc dự phòng Xiaomi 10000 mAh</li>
						<li>Cơ hội bốc thăm trúng thưởng khi mua tất cả các sản phẩm
							trên 2.000.000 vnđ</li>

					</ul>
				</div>
			</div>
			<a href="order/checkout.php" class="btn btn-danger btn-block" data-cart-id="${model.id}"></span>
				Tiến hành đặt hàng </a>
		</div>
	</div>
	<div class="container-space"></div>
</body>
</html>