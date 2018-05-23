<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TDSHop</title>

<script>
	$(function() {
		showCatSlider('.mi-slider', 5000);
	});
</script>
<style>
.mi-slider {
	height: 330px;
}

.mi-slider ul li img {
	height: 200px;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-sm-8">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid" src="images/carousel/home/30_10_2017_10_00_40_HC-Tra-Gop-800-300.png" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="images/carousel/home/20_01_2018_08_49_40_Big-Apple-Visa-800-300.png" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="images/carousel/home/30_12_2017_10_59_38_Oppo-F5-800-300.png" alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="images/carousel/home/23_01_2018_09_59_18_big-samsung-gif.gif" alt="Third slide">
					</div>
					
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="hp-home">
				<img
					src="images/carousel/home/16_01_2018_16_08_15_big-samsung-398-110.png">
			</div>
			<div class="container-space"></div>
			<div class="hp-home">
				<img
					src="images/carousel/home/17_01_2018_16_45_10_Sony-Sticky-398-110.png">
			</div>
		</div>
	</div>
	<!-- Slideshow -->
	<div class="mi-slider">
		<c:forEach var="s" items="${sup4}">
			<ul>
				<c:forEach var="p" items="${s.products}" end="3">
					<li><a href="product/detail/${p.id}.php"> <img
							src="images/products/${p.image}" />
							<h4>${p.name}</h4>
					</a></li>
				</c:forEach>
			</ul>
		</c:forEach>
		<nav>
			<c:forEach var="s" items="${sup4}">
				<a href="#">${s.companyName}</a>
			</c:forEach>
		</nav>
	</div>
	<div class="panel">
		<div class="panel-heading">
			<strong style="color: blue">ĐIỆN THOẠI KHUYẾN MÃI HOT</strong>
		</div>
		<div>
			<c:forEach var="p" items="${items}" begin="0" end="25">
				<c:if test="${p.discount >= 0.1 && p.category.id == 1}">
					<div class="col-sm-3">
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
										<strong style="color: #DC2020"><fmt:formatNumber
												value="${p.unitPrice*22800}" maxFractionDigits="0" /> VNĐ</strong>
									</div>
								</div>
								<div class="hp-icon-product">
									<c:choose>
										<c:when test="${p.discount == 0.1}">
											<img src="images/promo_icon.gif">
										</c:when>
										<c:when test="${p.discount ==0.15}">

										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div class="panel">
		<div class="panel-heading">
			<strong style="color: blue">ĐIỆN THOẠI NỔI BẬT NHẤT</strong>
		</div>
		<div>
			<c:forEach var="p" items="${items}" begin="0" end="23">
				<c:if test="${p.special==true && p.category.id == 1}">
					<div class="col-sm-3">
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
										<strong style="color: #DC2020"><fmt:formatNumber
												value="${p.unitPrice*22800}" maxFractionDigits="0" /> VNĐ</strong>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>

	<div class="panel">
		<div class="panel-heading">
			<strong style="color: blue">TABLET-LAPTOP NỔI BẬT NHẤT</strong>
		</div>
		<div>
			<c:forEach var="p" items="${items}" begin="0" end="144">
				<c:if
					test="${(p.special==true && p.category.id == 3) || (p.special==true && p.category.id == 2)}">
					<div class="col-sm-3">
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
										<strong style="color: #DC2020"><fmt:formatNumber
												value="${p.unitPrice*22800}" maxFractionDigits="0" /> VNĐ</strong>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>
</html>