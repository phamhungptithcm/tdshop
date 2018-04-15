<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng nhập tài khoản</title>
<script>
$(document).ready(function(){
    $("#user").validate({ 
		rules:{
			id:{required:true,
				minlength:5,
				},
			password:{
				required:true,
				minlength:1,
				},
		},
		messages: {
			id:{required:'Không để trống',
				minlength:'Tên đăng nhập không chứa khoảng trắng và ít nhất phải 5 kí tự',
				},
			password:{required:'Không để trống',
				minlength:'Mật khẩu ít nhất phải 1 kí tự',
				},
		},
	});
});
</script>
</head>
<body>
	<div class="row">
		<div class="col-sm-6 hp-forgot">
			<h4 class="text-center">ĐĂNG NHẬP TÀI KHOẢN</h4>
			<div class="alert alert-warning">${message}</div>
			<form action="account/login.php" method="post" id="user">
				<div class="input-group margin-bottom-sm form-group">
					<span class="input-group-addon"><i
						class="fa fa-user-o fa-fw"></i></span> <input name="id"
						class="form-control" type="text" placeholder="Tên đăng nhập..."
						value="${cookie.uid.value}" id="id">
				</div>
				<div class="input-group form-group">
					<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
					<input name="password" class="form-control" type="password"
						placeholder="Mật khẩu" value="${cookie.pwd.value}" id="password">
				</div>
				<div class="form-group row">
					<div class="col-sm-6">
						<label> <input type="checkbox" name="remember"
							value="true"> Nhớ mật khẩu
						</label>
					</div class="col-sm-6 pull-right">
					<div>
						<a href="account/forgot.php">Quên mật khẩu?</a>
					</div>
				</div>
				<div class="form-group">
					<button class="btn btn-primary">
						<i class="fa fa-power-off fa-fw"></i> Đăng nhập
					</button>
				</div>
			</form>
		</div>
		<div class="col-sm-6">
			<h4 class="text-center">TẠO TÀI KHOẢN MỚI</h4>
			<hr>
			<h5>Đăng ký tài khoản để mua hàng nhanh hơn. Theo dõi đơn đặt
				hàng, vận chuyển. Cập nhật các sự kiện và chương trình giảm giá của
				chúng tôi.</h5>
			<a class="btn btn-warning" href="account/register.php" role="button"><span
				class="fa fa-plus-circle fa-fw"></span> Đăng ký</a>
		</div>
	</div>
</body>
</html>