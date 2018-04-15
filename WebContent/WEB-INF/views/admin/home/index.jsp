<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trang quản lý</title>
<script type="text/javascript" src="https://www.google.com/jsapi">
	
</script>
<script type="text/javascript">
	// Load the Visualization API and the piechart package.
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.
		var data = new google.visualization.DataTable();
		data.addColumn('string');
		data.addColumn('number', 'Devices');
		data.addRows([ [ 'SamSung', 10 ], [ 'Apple', 21 ], [ 'Huawei', 5 ],
				[ 'Oppo', 14 ], [ 'Sony', 6 ], [ 'Asus', 11 ], [ 'Other', 33 ] ]);

		var options = {
			title : 'Số lượng phần trăm thị phần của các hãng 2017',
			'width' : 600,
			'height' : 400
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.PieChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	};
</script>
</head>
<body>
	<div class="row">
		<div class="col-sm-6">
			<div id="chart_div" class="pull-left"></div>
		</div>
		<div class="col-sm-6">
		</div>
	</div>
</body>
</html>