<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cập nhật hồ sơ</title>
<script>
$(document).ready(function(){
     $("#user").validate({ 
		rules:{
			fullname:{
				required:true,
				minlength:5,
				},
			email:{email:true, 
				required:true,
				},
			phone:{required:true, 
				number:true,
				rangelength:[10,11],
				}
		},
		messages: {
			fullname:{
				required:'Không để trống',
				minlength:'Họ tên ít nhất 5 kí tự'
				},
			email:{email:'Email không hợp lệ',
				required:'Không để trống',
				},
			phone:{required:'Không để trống',
				rangelength:'Số điện thoại không hợp lệ',
				number:'Số điện thoại không hợp lệ'
				}
		},
	});
});
</script>
</style>
</head>
<body>
	<h4 class="text-center">Cập nhật thông tin cá nhân</h4>
	<div class="alert alert-warning">${message}</div>
	<form:form action="account/edit.php" modelAttribute="user"
		enctype="multipart/form-data">
		<form:hidden path="password" />
		<form:hidden path="admin" />
		<form:hidden path="activated" />
		<form:hidden path="photo" />
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-user-o fa-fw"></i></span>
					<form:input path="id" cssClass="form-control" readonly="true" />
				</div>
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-address-book fa-fw"></i></span>
					<form:input path="fullname" cssClass="form-control" />
				</div>
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-envelope-o fa-fw"></i></span>
					<form:input path="email" cssClass="form-control" />
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-volume-control-phone fa-fw"></i></span>
					<form:input path="phone" cssClass="form-control" />
				</div>
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-file-image-o fa-fw"></i></span> <input name="upphoto"
						type="file" class="form-control" />
				</div>
				<img src="images/customers/${user.photo}"
					style="width: 40px; height: 40px;">
			</div>
		</div>
		<div class="form-group text-center">
			<button class="btn btn-warning"><i class="fa fa-refresh fa-spin fa-fw"></i>	Cập nhật</button>
		</div>
	</form:form>
</body>
</html>