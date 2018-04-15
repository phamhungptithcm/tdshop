<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quên mật khẩu</title>
</head>
<body>
	<div class="row">
		<div class="col-sm-6">
			<h4 class="text-center">ĐẶT LẠI MẬT KHẨU</h4>
			<div class="alert alert-warning">${message}</div>
			<form action="account/forgot.php" method="post">
				<div class="input-group margin-bottom-sm form-group">
					<span class="input-group-addon"><i
						class="fa fa-user-o fa-fw"></i></span> <input name="id"
						class="form-control" type="text" placeholder="Tên đăng nhập">
				</div>
				<div class="input-group margin-bottom-sm form-group">
					<span class="input-group-addon"><i
						class="fa fa-user-o fa-fw"></i></span> <input name="email"
						class="form-control" type="email" placeholder="Email">
				</div>
				<div class="form-group">
					<button class="btn btn-danger">
						<i class="fa fa-paper-plane" aria-hidden="true"></i> Gửi
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