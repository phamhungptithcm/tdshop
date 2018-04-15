<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý khách hàng</title>
</head>
<body>
	<div>
		<!-- tab buttons -->
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#edit"> <span
					class="glyphicon glyphicon-edit"></span> Chỉnh sửa
			</a></li>
			<li><a data-toggle="tab" href="#list"> <span
					class="glyphicon glyphicon-list"></span> Danh sách khách hàng
			</a></li>
		</ul>
		<!-- tab content -->
		<div class="tab-content">
			<div id="edit" class="tab-pane fade in active">
				<div class="alert alert-warning">${message}${param.message}</div>
				<form:form action="admin/customer/index.php" modelAttribute="model"
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
								<span class="input-group-addon">Họ tên</span>
								<form:input path="fullname" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Email</span>
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group input-group ">
								<span class="input-group-addon">SDT</span>
								<form:input path="phone" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group input-group">
								<span class="input-group-addon">Quản trị	</span>
								<div class="form-control">
									<form:radiobutton path="admin" value="true" label="Yes" />
									<form:radiobutton path="admin" value="false" label="No" />
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group input-group">
								<span class="input-group-addon">Ảnh</span> <input type="file"
									name="upphoto" class="form-control">
								<form:hidden path="photo" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group input-group">
								<span class="input-group-addon">Kích hoạt</span>
								<div class="form-control">
									<form:radiobutton path="activated" value="true" label="Yes" />
									<form:radiobutton path="activated" value="false" label="No" />
								</div>
							</div>
						</div>
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary"
							formaction="admin/customer/insert.php"
							${empty model.id?'':'disabled'}>Thêm</button>
						<button class="btn btn-warning"
							formaction="admin/customer/update.php"
							${empty model.id?'disabled':''}>Cập nhật</button>
						<button class="btn btn-danger"
							formaction="admin/customer/delete.php"
							${empty model.id?'disabled':''}>Xóa</button>
						<button class="btn btn-success"
							formaction="admin/customer/index.php">Làm mới</button>
					</div>
				</form:form>
			</div>
			<div id="list" class="tab-pane fade">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Mã</th>
							<th>Họ tên</th>
							<th>Email</th>
							<th>Số điện thoại</th>
							<th>Ảnh</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}">
							<tr>
								<td>${item.id}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								<td>${item.phone}</td>
								<td>${item.photo}</td>
								<td><a class="btn btn-default"
									href="admin/customer/edit.php?id=${item.id}">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>
</html>