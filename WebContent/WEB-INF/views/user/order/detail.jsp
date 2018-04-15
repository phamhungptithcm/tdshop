<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quản lý hóa đơn</title>
</head>
<body>
	<form:form action="order/cancel.php" modelAttribute="order">
		<form:hidden path="orderStatus.id"/>
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Order Id</label>
				<form:input path="id" cssClass="form-control" readonly="true"/>
			</div>
			
			<div class="form-group col-sm-4">
				<label>Shipped Date</label>
				<form:input path="shippedDate" cssClass="form-control" readonly="true"/>
			</div>
			
			<div class="form-group col-sm-4">
				<label>Order Status</label>
				<form:input path="orderStatus.name" cssClass="form-control" readonly="true"/>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Customer</label>
				<form:input path="customer.id" cssClass="form-control" readonly="true"/>
			</div>
			
			<div class="form-group col-sm-4">
				<label>Order Date</label>
				<form:input path="orderDate" cssClass="form-control" readonly="true"/>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Ship Name</label>
				<form:input path="shipName" cssClass="form-control" readonly="true"/>
			</div>
			
			<div class="form-group col-sm-4">
				<label>Ship Address</label>
				<form:input path="shipAddress" cssClass="form-control" readonly="true"/>
			</div>
			
			<div class="form-group col-sm-4">
				<label>Amount</label>
				<form:input path="amount" cssClass="form-control" readonly="true"/>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-sm-12">
				<label>Notes</label>
				<form:textarea path="notes" cssClass="form-control" rows="4" readonly="true"/>
			</div>
			<c:if test="${order.orderStatus.id <= 2}">
				<div class="form-group col-sm-12">
					<button class="btn btn-default">Cancel</button>
				</div>
			</c:if>
		</div>
	</form:form>
	<table class="table">
		<thead>
			<tr>
				<th>Mã</th>
				<th>Tên SP</th>
				<th>Giá</th>
				<th>Giảm giá</th>
				<th>Số lượng</th>
				<th>Tổng tiền</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${order.orderDetails}">
				<tr>
					<td>${item.id}</td>
					<td>${item.product.name}</td>
					<td>${item.unitPrice}</td>
					<td>${item.discount*100}%</td>
					<td>${item.quantity}</td>
					<td>${item.quantity * item.unitPrice * (1-item.discount)}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>