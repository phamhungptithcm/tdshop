<%@ page pageEncoding="utf-8"%>

<div class="navbar navbar-default row hp-navbar-admin">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="admin/home/index.php" class="navbar-brand" style="color: white">Trang chủ</a>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">Quản lý <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="admin/product/index.php">Hàng hóa</a></li>
                    <li><a href="admin/supplier/index.php">Nhà cung cấp</a></li>
                    <li><a href="admin/category/index.php">Chủng loại</a></li>
                    <li><a href="admin/customer/index.php">Khách hàng</a></li>
                    <li><a href="admin/order/index.php">Hóa đơn</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">Thống kê <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="admin/inventory/by-category.php">Theo loại</a></li>
                    <li><a href="admin/inventory/by-supplier.php">Theo hãng</a></li>
                    <li class="divider"></li>
                    <li><a href="admin/revenue/by-product.php">Theo từng mặt hàng</a></li>
                    <li><a href="admin/revenue/by-category.php">Theo từng loại hàng</a></li>
                    <li><a href="admin/revenue/by-supplier.php">Theo từng hãng</a></li>
                    <li><a href="admin/revenue/by-customer.php">Theo từng khách hàng</a></li>
                    <li class="divider"></li>
                    <li><a href="admin/revenue/by-year.php">Theo từng năm</a></li>
                    <li><a href="admin/revenue/by-quarter.php">Theo từng quí</a></li>
                    <li><a href="admin/revenue/by-month.php">Theo từng tháng</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">Tài khoản <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="account/logoff.php">Đăng xuất</a></li>
                    <li><a href="account/change.php">Đổi mật khẩu</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Quản lý tài khoản</a></li>
                    <li><a href="#">Phân quyền</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>