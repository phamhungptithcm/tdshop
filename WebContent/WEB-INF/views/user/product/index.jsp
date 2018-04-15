<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${titleName}</title>
</head>
<body>
	<jsp:include page="../shared/carousel.jsp"></jsp:include>
	<div class="container-space"></div>
	<jsp:include page="../shared/sortProduct.jsp"></jsp:include>
	<div class="container-space"></div>
	<div>
	<div id="result">
		<jsp:include page="list-product.jsp"></jsp:include>
	</div>
	<div class="row">
		<ul class="pager col-sm-12">
			<li><a href="#"><span class="glyphicon glyphicon-hand-up"></span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-hand-left"></span></a></li>
			<li><a>page 3 of 15 pages</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-hand-right"></span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-hand-down"></span></a></li>
		</ul>
	</div>
	</div>
	<div class="container-space"></div>
</body>
</html>