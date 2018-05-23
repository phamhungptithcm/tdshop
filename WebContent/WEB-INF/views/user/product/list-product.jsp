<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<c:forEach var="p" items="${items}">
	<div class="col-sm-12">
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
						<c:when test="${p.discount > 0}">
							<img src="images/promo_icon.gif">
						</c:when>
						<c:when test="${p.latest}">
							<img src="images/new_icon.gif">
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</c:forEach>