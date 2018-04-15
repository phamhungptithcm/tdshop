<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng ký tài khoản</title>
<script>
$(document).ready(function(){
     $("#user").validate({ 
		rules:{
			id:{required:true,
				minlength:5,
				},
			password:{
				required:true,
				minlength:8,
				},
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
			id:{required:'Không để trống',
				minlength:'Tên đăng nhập không chứa khoảng trắng và ít nhất phải 5 kí tự',
				},
			password:{required:'Không để trống',
				minlength:'Mật khẩu ít nhất phải 8 kí tự',
				},
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
</head>
<body>
	<h4 class="text-center">Đăng ký tài khoản</h4>
	<div class="alert alert-warning">${message}</div>
	<form:form action="account/register.php" modelAttribute="user"
		enctype="multipart/form-data" id="user">
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-user-o fa-fw"></i></span>
					<form:input path="id" cssClass="form-control"
						placeholder="Nhập tên đăng nhập..." />
						<form:errors path="id" cssClass="text-danger"></form:errors>
				</div>
				<div class="form-group input-group">
					<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
					<form:input path="password" cssClass="form-control"
						placeholder="Nhập mật khẩu..." />
				</div>

				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-address-book fa-fw"></i></span>
					<form:input path="fullname" cssClass="form-control"
						placeholder="Nhập họ tên..." />
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-envelope-o fa-fw"></i></span>
					<form:input path="email" cssClass="form-control"
						placeholder="Nhập email..." />
				</div>

				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-volume-control-phone fa-fw"></i></span>
					<form:input path="phone" cssClass="form-control"
						placeholder="Nhập số điện thoại..." />
				</div>
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-file-image-o fa-fw"></i></span> <input name="upphoto"
						type="file" class="form-control" />
				</div>
			</div>
		</div>
		<div class="form-group text-center">
			<button class="btn btn-warning">
				<span class="fa fa-plus-circle fa-fw"></span>Đăng ký
			</button>
		</div>
	</form:form>
</body>
</html>