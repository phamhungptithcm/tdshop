<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="shared/head.jsp" />
<link rel="shorcut icon" type="image/x-icon"
	href="images/brand/DTShopt.ico" />
<style type="text/css">
.hp-icon-brand img {
	position: absolute;
	top: 0px;
	margin-top: -50px !important;
	margin-left: -23px !important;
}

.hp-image-cart img {
	height: 150px;
	width: 150px;
}

label.error {
	color: red;
	font-size: smaller;
}
</style>
<script>
	$(document).ready(function(){
	$("[data-cart-id] .btn-block-buy").click(function(){
		var id = $(this).parents("[data-cart-id]").attr("data-cart-id");
		$.ajax({
			url:"cart/add.php",
			data:{id: id},
			dataType:"json",
			success:function(response){
				$("#cart-count").html(response.count);
				$("#cart-amount").html(response.amount);
			}
		});
	});
	$("[data-item-id] .glyphicon-trash").click(function(){
		var id = $(this).parents("[data-item-id]").attr("data-item-id");
		$.ajax({
			url:"cart/remove.php",
			data:{id: id},
			dataType:"json",
			success:function(response){
				$("#cart-count").html(response.count);
				$("#cart-amount").html(response.amount);
			}
		});
		$(this).parents("[data-item-id]").hide(200);
	});
	
	$("[data-item-id] input").on("input", function(){
		var id = $(this).parents("[data-item-id]").attr("data-item-id");
		var qty = $(this).val();
		
		var price = $(this).parents("[data-item-id]").attr("data-item-price");
		var discount = $(this).parents("[data-item-id]").attr("data-item-discount");
		var amount = price * qty * (1 - discount);
		$(this).parents("[data-item-id]").find(".nn-item-amount").html(amount);
		$.ajax({
			url:"cart/update.php",
			data:{id: id, qty: qty},
			dataType:"json",
			success:function(response){
				$("#cart-count").html(response.count);
				$("#cart-amount").html(response.amount);
			}
		});
	});
})
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="shared/header.jsp"></jsp:include>
		<nav>
			<jsp:include page="shared/menu.jsp"></jsp:include>
		</nav>
		<div class="nn-sheet row">
			<article class="col-sm-12">
				<div class="nn-body">
					<jsp:include page="${view}" />
				</div>
			</article>
		</div>
		<div class="container-space"></div>
		<!--Footer-->
		<jsp:include page="shared/footer.jsp"></jsp:include>
		<!--/.Footer-->
	</div>
</body>
</html>