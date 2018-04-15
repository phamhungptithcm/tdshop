<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đổi mật khẩu</title>
<script>
$(document).ready(function(){
     $("#change").validate({ 
		rules:{
			newpassword:{
				required:true,
				minlength:8,
			},
			confirmpassword:{
				equalTo:"#newpassword"
			},
		},
		messages: {
			newpassword:{
				required:'Không để trống',
				minlength:'Mật khẩu ít nhất phải 8 kí tự',
				},
			confirmpassword:{
				equalTo:'Mật khẩu không trùng khớp',
			}
		},
	});
});
</script>
</head>
<body>
	<h4 class="text-center">Đổi mật khẩu</h4>
	<div class="alert alert-warning">${message}</div>
	<form action="account/change.php" method="post" id="change">
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="fa fa-user-o fa-fw"></i></span> <input name="id"
						class="form-control" placeholder="Tên đăng nhập">
				</div>

				<div class="form-group input-group">
					<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
					<input type="password" name="password" class="form-control"
						placeholder="Mật khẩu cũ">
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group input-group">
					<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
					<input type="password" name="newpassword" class="form-control"
						placeholder="Mật khẩu mới" id="newpassword">
				</div>

				<div class="form-group input-group">
					<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
					<input type="password" name="confirmpassword" class="form-control"
						placeholder="Xác nhận mật khẩu" id="confirmpassword">
				</div>
			</div>
			<div class="form-group text-center">
				<button class="btn btn-danger">
					<i class="fa fa-paper-plane-o" aria-hidden="true"></i> Thay đổi
				</button>
			</div>
		</div>
	</form>
</body>
</html>