<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="navbar navbar-expand-lg navbar-ligh hp-navbar">
	<div class="navbar-header">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="product/list-by-category/1.php" style="color: white"><i
					class="fa fa-mobile" aria-hidden="true"> ĐIỆN THOẠI</i> </a></li>

			<li class="nav-item"><a class="nav-link"
				href="product/list-by-category/2.php" style="color: white"><i
					class="fa fa-tablet" aria-hidden="true"> MÁY TÍNH BẢNG</i></a></li>

			<li class="nav-item"><a class="nav-link disabled"
				href="product/list-by-category/3.php" style="color: white"><i
					class="fa fa-laptop" aria-hidden="true"> LAPTOP</i></a></li>

			<li class="nav-item"><a class="nav-link disabled"
				href="product/list-by-category/4.php" style="color: white"><i
					class="fa fa-headphones" aria-hidden="true"> PHỤ KIỆN</i></a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search.." aria-label="Search">
			<button class="btn btn-outline-warning my-2 my-sm-0" type="submit"
				formaction="product/search.php">
				<i class="fa fa-search" aria-hidden="true"></i>
			</button>
			
		</form>
		<div class="btn-group open nav navbar-nav navbar-right text-center">
			<form class="form-inline my-2 my-lg-0 ">
				<li class="nav-item dropdown">
					<button
						class="btn btn-sm btn-outline-danger nav-link dropdown-toggle my-2 my-sm-0"
						type="button" formaction="account/login.php"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" style="color: white;">
						<i class="fa fa-user fa-fw"></i>
						<c:if test="${!empty user}">
						${user.id}
					</c:if>
					</button>
					<ul class="dropdown-menu " aria-labelledby="navbarDropdownMenuLink">
						<c:choose>
							<c:when test="${empty sessionScope.user}">
								<li><a href="account/login.php"><i class="fa fa-power-off fa-fw"></i>
									Đăng nhập</a></li>
								<li><a href="account/register.php"><i
									class="fa fa-plus-circle fa-fw"></i> Đăng kí</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="account/logoff.php"><i class="fa fa-unlock"></i>
									Đăng xuất</a></li>
								<li><a href="order/list.php"><i class="fa fa-first-order fa-fw"></i>
									Đơn hàng</a></li>
								<li><a href="account/edit.php"><i class="fa fa-pencil fa-fw"></i>
									Cập nhật hồ sơ</a></li>
								<li><a href="account/change.php"><i class="fa fa-cog fa-fw"></i>
									Đổi mật khẩu</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</li>
				<c:if test="${user.admin==true}">
				<a class="btn btn-sm btn-outline-danger my-2 my-sm-0" type="button" href="admin/home/index.php">
					<i class="fa fa-cogs"></i>
				</a>
				</c:if>
				<c:if test="${user !=null}">
				<a class="btn btn-sm btn-outline-danger my-2 my-sm-0" type="button" href="cart/gio-hang.php">
						<i class="fa fa-cart-arrow-down"></i>
				</a>
				</c:if>
			</form>
		</div>
	</div>
</div>