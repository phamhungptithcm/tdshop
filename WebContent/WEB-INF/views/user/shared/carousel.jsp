<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div>
	<c:if test="${model.id ==1}">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					<li data-target="#carousel-example-generic" data-slide-to="5"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="item active">
					<img
						src="images/carousel/phone/636503733236240781_C1 Samsung Tet.png">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="images/carousel/phone/636516588843741646_j7plus-C1.png">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="images/carousel/phone/636507988194336060_OPPO-tet-C1.png">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="images/carousel/phone/636517050624315564_Untitled-2.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img
						src="images/carousel/phone/636518822472879474_C1 Note8 Tim khoi.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="images/carousel/phone/636520462496533075_C1.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</c:if>
	<c:if test="${model.id == 4}">
		<div class="row">
			<div class="col-sm-8">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner text-center" role="listbox">
						<div class="item active">
							<img
								src="images/carousel/phukien/636503796260033135_C3 - Sac du phong.png">
							<div class="carousel-caption">...</div>
						</div>
						<div class="item">
							<img
								src="images/carousel/phukien/636503797787057964_C3 MUA THE NHO.png">
							<div class="carousel-caption">...</div>
						</div>
						<div class="item">
							<img
								src="images/carousel/phukien/636504037742784114_banner_C2.jpg">
							<div class="carousel-caption">...</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-sm-4">
				<div>
					<img src="images/carousel/phukien/pin-du-phong 2.png">
				</div>
				<div class="container-space"></div>
				<div>
					<img src="images/carousel/phukien/Loa-Bluetooth-595-100.png">
				</div>
			</div>
		</div>

	</c:if>
	<c:if test="${model.id == 3}">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
				<li data-target="#carousel-example-generic" data-slide-to="5"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="images/carousel/latop/636468745127463724_C1.jpg">
					<div class="carousel-caption">...</div>
				</div>

				<div class="item">
					<img src="images/carousel/latop/636503589004644885_C1 MSI-2.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="images/carousel/latop/636503591612429866_Dell-C1-1.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="images/carousel/latop/636503591631617005_laptop-C1.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img
						src="images/carousel/latop/636513523699853191_FRT_Banner Window_2.jpg">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img
						src="images/carousel/latop/636516103496500322_banner_C1 Copy.png">
					<div class="carousel-caption">...</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</c:if>
	<c:if test="${model.id == 2}">
		<div class="row">
			<div class="col-sm-6">
				<div id="carousel-example-generic"
					class="carousel slide text-center" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img
								src="images/carousel/tablet/31_12_2017_16_28_55_Brand-Mobel-Huawei-595-100.png">
						</div>

						<div class="item">
							<img
								src="images/carousel/tablet/31_12_2017_16_19_37_Brand-Samsung-595-100.png">
						</div>
						<div class="item">
							<img
								src="images/carousel/tablet/31_12_2017_16_11_10_SamsungTabA6-595-100.png">
						</div>
						<div class="item">
							<img
								src="images/carousel/tablet/04_01_2018_09_47_38_Tablet-Duoi-3-Trieu-595-100.png">
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="images/carousel/tablet/Mung-U23-Chien-Thang-595-100.png">
							<div class="carousel-caption">...</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</div>