<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý chủng loại sản phẩm</title>
<script>
	$(document).ready(function() {
		$("#model").validate({
			rules:{
				name:{
					required:true,
					minlength:5,
				},
				nameVN:{
					required:true,
					minlength:5,
				},
			},
			messages:{
				name:{
					required:'Không được để trống',
					minlength:'Tên ít nhất 5 kí tự',
				},
				nameVN:{
					required:'Không được để trống',
					minlength:'Tên ít nhất 5 kí tự',
				}
			}
		
		});
	});
</script>
<style type="text/css">
	label.error{
    color:red;
    font-size: smaller;
}
</style>
</head>
<body>
	<div>
		<!-- tab buttons -->
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#edit"> <span
					class="glyphicon glyphicon-edit"></span> Chỉnh Sửa
			</a></li>
			<li><a data-toggle="tab" href="#list"> <span
					class="glyphicon glyphicon-list"></span> Danh sách chủng loại
			</a></li>
		</ul>
		<!-- tab content -->
		<div class="tab-content">
			<div id="edit" class="tab-pane fade in active">
				<div class="alert alert-warning">${message}${param.message}</div>
				<form:form action="admin/category/index.php" modelAttribute="model">
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Mã</span>
								<form:input path="id" cssClass="form-control" readonly="true" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Tên EN</span>
								<form:input path="name" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Tên VN</span>
								<form:input path="nameVN" cssClass="form-control" />
							</div>
						</div>
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary"
							formaction="admin/category/insert.php"
							${empty model.id?'':'disabled'}>Thêm</button>
						<button class="btn btn-warning"
							formaction="admin/category/update.php"
							${empty model.id?'disabled':''}>Cập nhật</button>
						<button class="btn btn-danger"
							formaction="admin/category/delete.php"
							${empty model.id?'disabled':''}>Xóa</button>
						<button class="btn btn-success"
							formaction="admin/category/index.php">Làm mới</button>
					</div>
				</form:form>
			</div>
			<div id="list" class="tab-pane fade">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Mã</th>
							<th>Tên 1</th>
							<th>Tên 2</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}">
							<tr>
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td>${item.nameVN}</td>
								<td><a class="btn btn-default"
									href="admin/category/edit.php?id=${item.id}">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>
</html>