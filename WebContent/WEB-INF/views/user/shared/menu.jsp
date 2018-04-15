<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="nav navbar navbar-default hp-navbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="product/list-by-category/1.php"
					style="color: white"><i class="fa fa-mobile" aria-hidden="true">
							ĐIỆN THOẠI</i></a></li>
				<li><a href="product/list-by-category/2.php"
					style="color: white"><i class="fa fa-tablet" aria-hidden="true">
							MÁY TÍNH BẢNG</i></a></li>
				<li><a href="product/list-by-category/3.php"
					style="color: white"><i class="fa fa-laptop" aria-hidden="true">
							LAPTOP</i></a></li>
				<li><a href="product/list-by-category/4.php"
					style="color: white"><i class="fa fa-headphones"
						aria-hidden="true"> PHỤ KIỆN</i></a></li>
			</ul>
			<form class="navbar-form navbar-left" action="product/search.php"
				method="post">
				<div class="form-group">
					<input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Search..."
						name="keywords">
					<c:if test="${keywords != null}">
						<ul>
							<li></li>
						</ul>
					</c:if>
				</div>
				<button type="submit" class="btn btn-default hp-cate"
					formaction="product/search.php">
					<i class="fa fa-search" aria-hidden="true"></i>
				</button>

			</form>
			<div class="btn-group open nav navbar-nav navbar-right text-center">
				<a class="btn btn-default" href="account/login.php"><i class="fa fa-user fa-fw"></i>
					<c:if test="${!empty user}">
						${user.id}
					</c:if>
				</a>
				<a class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					href="#"><span class="fa fa-caret-down"
					title="Toggle dropdown menu"></span>
				</a>
				<ul class="dropdown-menu">
					<c:choose>
						<c:when test="${empty sessionScope.user}">
							<li><a href="account/login.php"><i class="fa fa-power-off fa-fw"></i>
									Đăng nhập</a></li>
							<li><a href="account/register.php"><i class="fa fa-plus-circle fa-fw"></i> Đăng
									kí</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="account/logoff.php"><i class="fa fa-unlock"></i> Đăng xuất</a></li>
							<li><a href="order/list.php"><i class="fa fa-first-order fa-fw"></i> Đơn hàng</a></li>
							<li><a href="account/edit.php"><i class="fa fa-pencil fa-fw"></i> Cập
									nhật hồ sơ</a></li>
							<li><a href="account/change.php"><i class="fa fa-cog fa-fw"></i> Đổi mật
									khẩu</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
					<c:if test="${user.admin==true}">
					<a class="btn btn-default" href="admin/home/index.php"><i class="fa fa-cogs"></i></a>
					</c:if>
				<c:if test="${user !=null}">
				<a class="btn btn-default" href="cart/gio-hang.php"><i class="fa fa-cart-arrow-down"></i></a>
				</c:if>
			</div>
		</div>
	</div>
</div>