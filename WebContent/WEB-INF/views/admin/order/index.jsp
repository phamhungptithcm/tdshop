<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý hóa đơn</title>
<script>
	$(document).ready(function() {
		$("#model").validate({
			rules:{
				id:{
					required:true,
					number:true,
				},
				customer.id:{
					required:true,
					maxlength:30,
				},
				orderĐate:{
					required:true,
					minlength:10,
				},
				shipDate:{
					required:true,
					minlength:10,
				},
				shipName:{
					required:true,
					minlength:5,
				},
				shipAddress:{
					required:true,
					minlength:50,
				},
				amount:{
					required:true,
					number:true,
				}
			}	
		});
	});
</script>
</head>
<body>
	<div>
		<!-- tab buttons -->
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#edit"> <span
					class="glyphicon glyphicon-edit"></span> Chỉnh sửa
			</a></li>
			<li><a data-toggle="tab" href="#list"> <span
					class="glyphicon glyphicon-list"></span> Danh sách hóa đơn
			</a></li>
		</ul>
		<!-- tab content -->
		<div class="tab-content">
			<div id="edit" class="tab-pane fade in active">
				<div class="alert alert-warning">${message}${param.message}</div>
				<form:form action="admin/order/index.php" modelAttribute="model"
					enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Mã</span>
								<form:input path="id" cssClass="form-control"
									readonly="${!empty model.id}" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Khách hàng</span>
								<form:input path="customer.id" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Ngày đặt hàng</span>
								<form:input path="orderDate" cssClass="form-control" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Ngày giao hàng</span>
								<form:input path="shippedDate" cssClass="form-control"
									id="datepicker" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Tên đặt hàng</span>
								<form:input path="shipName" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Địa chỉ</span>
								<form:input path="shipAddress" cssClass="form-control" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group input-group">
								<span class="input-group-addon">Tổng tiền</span>
								<form:input path="amount" cssClass="form-control" />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">Trang thái</span>
								<form:select path="orderStatus.id" cssClass="form-control"
									items="${orderStatuses}" itemValue="id" itemLabel="nameVN" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group ">
								<form:textarea path="notes" rows="3" cssClass="form-control" placeholder="Ghi chú"/>
							</div>
						</div>
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary"
							formaction="admin/order/insert.php"
							${empty model.id?'':'disabled'}>Thêm</button>
						<button class="btn btn-warning"
							formaction="admin/order/update.php"
							${empty model.id?'disabled':''}>Cập nhật</button>
						<button class="btn btn-danger" formaction="admin/order/delete.php"
							${empty model.id?'disabled':''}>Xóa</button>
						<button class="btn btn-success" formaction="admin/order/index.php">Làm
							mới</button>
					</div>
				</form:form>
			</div>
			<div id="list" class="tab-pane fade">
				<jsp:include page="list.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>