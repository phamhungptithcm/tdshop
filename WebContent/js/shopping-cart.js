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