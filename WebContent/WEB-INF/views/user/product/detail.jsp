<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${model.name}</title>
</head>
<body>
	<div class="hp-detail">
		<div class="row">
			<h4>
				<strong>${model.name}</strong>
			</h4>
			<hr>
			<div class="col-sm-5 text-center">
				<img alt="" src="images/products/${model.image}">
			</div>
			<div class="col-sm-7">
				<table class="table table-hover">
					<tr>
						<th><h4>
								<strong style="color: #DC2020"><fmt:formatNumber
										value="${model.unitPrice*22800}" maxFractionDigits="0"></fmt:formatNumber>
									VNĐ</strong>
							</h4></th>
						<th></th>
					</tr>
					<c:choose>
						<c:when test="${model.category.id == 4}">
							<tr>
								<th>Hiệu suất sạc:</th>
								<th>${model.technicalParam.cpu}</th>
							</tr>
							<tr>
								<th>Đèn LED báo hiệu:</th>
								<th>${model.technicalParam.ram}</th>
							</tr>
							<tr>
								<th>Thời gian sạc:</th>
								<th>${model.technicalParam.screen}</th>
							</tr>
							<tr>
								<th>Nguồn vào:</th>
								<th>${model.technicalParam.screenCard}</th>
							</tr>
							<tr>
								<th>Lõi PIN:</th>
								<th>${model.technicalParam.drive}</th>
							</tr>
							<tr>
								<th>Cổng ra USB 1:</th>
								<th>${model.technicalParam.operatingSystem}</th>
							</tr>
							<tr>
								<th>Cổng ra USB 2:</th>
								<th>${model.technicalParam.connectionPort}</th>
							</tr>
							<tr>
								<th>Kích thước:</th>
								<th>${model.technicalParam.size}</th>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<th>CPU:</th>
								<th>${model.technicalParam.cpu}</th>
							</tr>
							<tr>
								<th>RAM:</th>
								<th>${model.technicalParam.ram}</th>
							</tr>
							<tr>
								<th>Màn hình:</th>
								<th>${model.technicalParam.screen}</th>
							</tr>
							<tr>
								<th>Card màn hình:</th>
								<th>${model.technicalParam.screenCard}</th>
							</tr>
							<tr>
								<th>Drive:</th>
								<th>${model.technicalParam.drive}</th>
							</tr>
							<tr>
								<th>Hệ điều hành:</th>
								<th>${model.technicalParam.operatingSystem}</th>
							</tr>
							<tr>
								<th>Cổng kết nối:</th>
								<th>${model.technicalParam.connectionPort}</th>
							</tr>
							<tr>
								<th>Kích cỡ:</th>
								<th>${model.technicalParam.size}</th>
							</tr>
						</c:otherwise>
					</c:choose>
				</table>
				<div>
					<div>
						<i class="fa fa-gg-circle" aria-hidden="true">Tình trạng hàng:
						</i>
						<c:if test="${model.unitsInStock > 0}">
							<strong style="color: green">Còn hàng</strong>
						</c:if>
						<c:if test="${model.unitsInStock <0}">
							<strong style="color: red">Hết hàng</strong>
						</c:if>
					</div>
				</div>
				<div class="text-center row">
					<div class="col-sm-6" data-cart-id="${model.id}">
						<a href="cart/gio-hang.php" class="btn btn-primary btn-block btn-block-buy btn-lg" role="button">MUA NGAY</a>
					</div>
					<div class="col-sm-6">
						<a class="btn btn-danger btn-block" href="#" role="button">TRẢ GÓP LÃI SUẤT THẤP</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="panel col-sm-12">
				<div class="panel-heading text-center"><h4><strong>Đặc điểm nổi bật của ${model.name}</strong></h4></div>
				<div class="row panel-body">
					<div class="col-sm-12">${model.description}</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<!-- tab buttons -->
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1"></span> HÀNG CÙNG LOẠI
					</a></li>
					<li><a data-toggle="tab" href="#tab2"> HÀNG CÙNG NHÀ CUNG CẤP
					</a></li>
				</ul>
				<!-- tab content -->
				<div class="tab-content">
					<div id="tab1" class="tab-pane fade in active">
						<c:forEach var="p" items="${model.category.products}" end="5">
							<c:if test="${model.id != p.id}">
								<div class="hp-detail">
									<div class="hp-container">
										<div class="hp-box">
											<div class="hp-body">
												<a href="product/detail/${p.id}.php"> <img
													src="images/products/${p.image}">
												</a>
											</div>
											<div class="hp-footername">
												<strong>${p.name}</strong>
											</div>
											<div class="hp-footerprice">
												<div>
													<strong style="color: #DC2020">${p.unitPrice}</strong>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div id="tab2" class="tab-pane fade">
						<c:forEach var="p" items="${model.supplier.products}" end="6">
							<c:if test="${model.id != p.id}">
								<div class="hp-detail">
									<div class="hp-container">
										<div class="hp-box">
											<div class="hp-body">
												<a href="product/detail/${p.id}.php"> <img
													src="images/products/${p.image}">
												</a>
											</div>
											<div class="hp-footername">
												<strong>${p.name}</strong>
											</div>
											<div class="hp-footerprice">
												<div>
													<strong style="color: #DC2020">${p.unitPrice}</strong>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		</div>
	<div class="container-space"></div>
</body>
</html>