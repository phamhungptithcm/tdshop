<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tiến hành thanh toán</title>
<script>
$(document).ready(function(){
     $("#order").validate({ 
		rules:{
			shipName:{required:true,
				minlength:5,
				},
			shipAddress:{
				required:true,
				minlength:30,
				},
		},
		messages: {
			shipName:{required:'Không để trống',
				minlength:'Tên đăng nhập không chứa khoảng trắng và ít nhất phải 5 kí tự',
				},
			shipAddress:{required:'Không để trống',
				minlength:'Địa chỉ ít nhất phải 50 kí tự để chúng tôi có thể giao hàng đến tay bạn',
				},
		},
	});
});
</script>
</head>
<body>
	<%-- <table class="table text-center">
		<thead>
			<tr>
				<th>Tên</th>
				<th>Giá</th>
				<th>Giảm giá</th>
				<th>Số lượng</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>${item.name}</th>
				<th><strong style="color: #DC2020"><fmt:formatNumber
							value="${item.unitPrice*22800*(1-item.discount)}"
							maxFractionDigits="0"></fmt:formatNumber> VNĐ</strong></th>
				<th>${item.discount*100}%</th>
				<th>1</th>
			</tr>
		</tbody>
	</table>
	${message}
	<form:form action="order/checkout.php" modelAttribute="order">
		<form:hidden path="orderStatus.id" />

		<div class="row">
			<div class="form-group col-sm-4">
				<label>Tên khách hàng</label>
				<form:input path="customer.id" cssClass="form-control"
					readonly="true" />
			</div>

			<div class="form-group col-sm-4">
				<label>Ngày đặt hàng</label>
				<form:input path="orderDate" cssClass="form-control" readonly="true" />
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-4">
				<label>Tên người nhận</label>
				<form:input path="shipName" cssClass="form-control" />
			</div>

			<div class="form-group col-sm-4">
				<label>Địa chỉ</label>
				<form:input path="shipAddress" cssClass="form-control" />
			</div>

			<div class="form-group col-sm-4">
				<label>Tổng tiền</label>
				<form:input path="amount" cssClass="form-control" readonly="true"
					value="${item.unitPrice}$" />
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-12">
				<label>Ghi chú</label>
				<form:textarea path="notes" cssClass="form-control" rows="4" />
			</div>

			<div class="form-group col-sm-12">
				<button class="btn btn-danger">Đặt hàng</button>
			</div>
		</div>
	</form:form> --%>
	<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
	<table class="table">
		<thead>
			<tr>
				<th>Mã</th>
				<th>Tên</th>
				<th>Giá SP</th>
				<th>Giảm giá</th>
				<th>Số Lượng</th>
				<th>Tổng tiền</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${cart.item}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
					<td><fmt:formatNumber value="${item.unitPrice*22800}"
							maxFractionDigits="0"></fmt:formatNumber> VNĐ</strong></td>
					<td>${item.discount*100}%</td>
					<td>${item.quantity}</td>
					<td><strong style="color: #DC2020"><fmt:formatNumber
								value="${item.amount}" maxFractionDigits="0"></fmt:formatNumber>
							VNĐ</strong></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	${message}
	<form:form action="order/checkout.php" modelAttribute="order">
		<form:hidden path="orderStatus.id" />

		<div class="row">
			<div class="form-group col-sm-4">
				<label>Mã khách hàng</label>
				<form:input path="customer.id" cssClass="form-control"
					readonly="true" />
			</div>

			<div class="form-group col-sm-4">
				<label>Ngày giao</label>
				<form:input path="orderDate" cssClass="form-control" readonly="true" />
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-4">
				<label>Tên người nhận</label>
				<form:input path="shipName" cssClass="form-control" />
			</div>

			<div class="form-group col-sm-4">
				<label>Địa chỉ</label>
				<form:input path="shipAddress" cssClass="form-control" />
			</div>

			<div class="form-group col-sm-4">
				<label>Tổng tiền</label>
				<form:input path="amount" cssClass="form-control" readonly="true" />
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-12">
				<label>Ghi chú</label>
				<form:textarea path="notes" cssClass="form-control" rows="4" />
			</div>

			<div class="form-group col-sm-12">
				<button class="btn btn-default">Đặt hàng</button>
			</div>
		</div>
	</form:form>
</body>
</html>