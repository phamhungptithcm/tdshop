<!DOCTYPE html>
<html>
<head>
<jsp:include page="shared/head.jsp" />
<link rel="shorcut icon" type="image/x-icon" href="images/brand/DTShopt.ico"/>
<style>
.hp-icon-brand img {
	position: absolute;
	top: 0px;
	margin-top: -50px !important;
	margin-left: -23px !important;
	
}
.hp-navbar-admin {
	background-color: #337ab7;

}
</style>
</head>
<body>
	<div class="container">
		<header class="row" style="height: 90px;">
			<div class="hp-icon-brand">
				<img src="images/brand/DTShop.png">
			</div>
		</header>
		<jsp:include page="shared/menu.jsp" />

		<div class="nn-sheet row">
			<article class="nn-body">
				<jsp:include page="${view}" />
			</article>
		</div>

		<footer class="panel panel-default row">
			<div class="panel-heading">
				<p class="text-center">Nhất Nghệ &copy; 2017. All rights
					reserved.</p>
			</div>
		</footer>
	</div>
</body>
</html>