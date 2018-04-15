<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý sản phẩm</title>
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
				<form:form action="admin/product/index.php" modelAttribute="model"
					enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Tên</span>
								<form:input path="name" cssClass="form-control" />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">Giá</span>
								<form:input path="unitPrice" cssClass="form-control" />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">Lượt xem</span>
								<form:input path="viewCount" cssClass="form-control" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">SL hàng</span>
								<form:input path="unitsInStock" cssClass="form-control" />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">Giảm giá</span>
								<form:input path="discount" cssClass="form-control" />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">Ngày nhập</span>
								<form:input path="productDate" cssClass="form-control"
									id="datepicker" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Available</span>
								<div class="form-control">
									<form:radiobutton path="available" value="true" label="Yes" />
									<form:radiobutton path="available" value="false" label="No" />
								</div>
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">SP mới</span>
								<div class="form-control">
									<form:radiobutton path="latest" value="true" label="Yes" />
									<form:radiobutton path="latest" value="false" label="No" />
								</div>
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon">Đặc biệt</span>
								<div class="form-control">
									<form:radiobutton path="special" value="true" label="Yes" />
									<form:radiobutton path="special" value="false" label="No" />
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon">Loại</span>
								<form:select path="category.id" cssClass="form-control"
									items="${cates}" itemValue="id" itemLabel="nameVN" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group  input-group">
								<span class="input-group-addon">Hãng SX</span>
								<form:select path="supplier.id" cssClass="form-control"
									items="${supps}" itemValue="id" itemLabel="companyName" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="fa fa-file-image-o fa-fw"></i></span> <input type="file"
									name="upimage" class="form-control">
								<form:hidden path="image" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<label>Mô tả</label>
							<form:textarea path="description" cssClass="form-control"
								rows="5" />
						</div>
						<div class="form-group text-center">
							<button class="btn btn-primary"
								formaction="admin/product/insert.php"
								${empty model.id?'':'disabled'}>Thêm</button>
							<button class="btn btn-warning"
								formaction="admin/product/update.php"
								${empty model.id?'disabled':''}>Cập nhật</button>
							<button class="btn btn-danger"
								formaction="admin/product/delete.php"
								${empty model.id?'disabled':''}>Xóa</button>
							<button class="btn btn-success"
								formaction="admin/product/index.php">Làm mới</button>
						</div>
					</div>
				</form:form>
			</div>
			<div id="list" class="tab-pane fade">
				<div id="result"></div>
				<div>
					<ul class="pager">
						<li><a href="#"><span class="glyphicon glyphicon-hand-up"></span></a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-hand-left"></span></a></li>
						<li><a>page 3 of 15 pages</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-hand-right"></span></a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-hand-down"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script>
		pageNo = 0;
		pageSize = 10;
		pageCount = 2018;

		function getPage() {
			$.ajax({
				url : "admin/product/get-page.php",
				data : {
					pageNo : pageNo,
					pageSize : pageSize
				},
				success : function(response) {
					$("#result").html(response);
					$(".pager a:eq(2)").html(
							"page " + (pageNo + 1) + " of " + pageCount
									+ " pages");
				}
			});
		}

		$(function() {
			$.ajax({
				url : "admin/product/get-page-count.php",
				data : {
					pageSize : pageSize
				},
				success : function(response) {
					pageCount = response;
					getPage();
				}
			});

			$(".pager a:first").click(function() {
				pageNo = 0;
				getPage();
				return false;
			});

			$(".pager a:eq(1)").click(function() {
				if (pageNo > 0) {
					pageNo--;
					getPage();
				}
				return false;
			});

			$(".pager a:eq(3)").click(function() {
				if (pageNo < pageCount - 1) {
					pageNo++;
					getPage();
				}
				return false;
			});

			$(".pager a:last").click(function() {
				pageNo = pageCount - 1;
				getPage();
				return false;
			});
		});
	</script>
</body>
</html>