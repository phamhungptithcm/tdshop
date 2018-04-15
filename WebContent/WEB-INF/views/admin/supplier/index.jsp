<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý hãng sản phẩm</title>
</head>
<body>
	<div>
		<!-- tab buttons -->
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#edit"> <span
					class="glyphicon glyphicon-edit"></span> Chỉnh sửa
			</a></li>
			<li><a data-toggle="tab" href="#list"> <span
					class="glyphicon glyphicon-list"></span> Danh sách sản phẩm
			</a></li>
		</ul>
		<!-- tab content -->
		<div class="tab-content">
			<div id="edit" class="tab-pane fade in active">
				<div class="alert alert-warning">${message}${param.message}</div>
				<form:form action="admin/supplier/index.php" modelAttribute="model"
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
								<span class="input-group-addon">Tên hãng</span>
								<form:input path="companyName" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">SĐT</span>
								<form:input path="phone" cssClass="form-control" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group input-group">
								<span class="input-group-addon">Email</span>
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group input-group">
								<span class="input-group-addon">Logo</span> <input type="file"
									name="uplogo" class="form-control">
								<form:hidden path="logo" />
							</div>
						</div>
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary"
							formaction="admin/supplier/insert.php"
							${empty model.id?'':'disabled'}>Thêm</button>
						<button class="btn btn-warning"
							formaction="admin/supplier/update.php"
							${empty model.id?'disabled':''}>Cập nhật</button>
						<button class="btn btn-danger"
							formaction="admin/supplier/delete.php"
							${empty model.id?'disabled':''}>Xóa</button>
						<button class="btn btn-success"
							formaction="admin/supplier/index.php">Làm mới</button>
					</div>
				</form:form>
			</div>
			<div id="list" class="tab-pane fade">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Mã</th>
							<th>Tên hãng</th>
							<th>Email</th>
							<th>Số điện thoại</th>
							<th>Logo</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}">
							<tr>
								<td>${item.id}</td>
								<td>${item.companyName}</td>
								<td>${item.email}</td>
								<td>${item.phone}</td>
								<td>${item.logo}</td>
								<td><a class="btn btn-default"
									href="admin/supplier/edit.php?id=${item.id}">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>
</html>