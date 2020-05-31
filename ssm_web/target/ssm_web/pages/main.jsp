<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>图书管理系统</title>
<meta name="description" content="图书管理系统">
<meta name="keywords" content="图书管理系统">

<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
			<!-- 页面头部 /-->

		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>图表显示<small>数据分布</small></h1>
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-dashboard"></i> 系统首页</a></li>
						<li><a href="#">图表显示</a></li>
						<li class="active">数据分布</li>
					</ol>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-6">
							<!-- AREA CHART -->
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">面积图</h3>

									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
										</button>
										<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
									</div>
								</div>
								<div class="box-body">
									<div class="chart">
										<canvas id="areaChart" style="height:250px"></canvas>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
						</div>

						<!-- /.col (LEFT) -->
						<div class="col-md-6">
							<!-- LINE CHART -->
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">折线图</h3>

									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
										</button>
										<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
									</div>
								</div>
								<div class="box-body">
									<div class="chart">
										<canvas id="lineChart" style="height:250px"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>

				</section>

		<%--<img src="${pageContext.request.contextPath}/img/center.jpg" width="100%" height="100%" />--%>

		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<strong>
			Copyright&copy;2020&nbsp;&nbsp;
			<a href="https://guoshizhan.club" style="color: #fff;">井冈山大学</a>&nbsp;&nbsp;
		</strong> &nbsp;&nbsp;版权所有 &nbsp;&nbsp;<b>Version 1.0</b>
		</footer>
		<!-- 底部导航 /-->

	</div>

	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale: 'zh-CN'
			});
		});


		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}


		$(function() {
			/* ChartJS
             * -------
             * Here we will create a few charts using ChartJS
             */

			//--------------
			//- AREA CHART -
			//--------------

			// Get context with jQuery - using jQuery's .get() method.
			var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
			// This will get the first returned node in the jQuery collection.
			var areaChart = new Chart(areaChartCanvas);

			var areaChartData = {
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
					label: "Electronics",
					fillColor: "rgba(210, 214, 222, 1)",
					strokeColor: "rgba(210, 214, 222, 1)",
					pointColor: "rgba(210, 214, 222, 1)",
					pointStrokeColor: "#c1c7d1",
					pointHighlightFill: "#fff",
					pointHighlightStroke: "rgba(220,220,220,1)",
					data: [65, 59, 80, 81, 56, 55, 40]
				},
					{
						label: "Digital Goods",
						fillColor: "rgba(60,141,188,0.9)",
						strokeColor: "rgba(60,141,188,0.8)",
						pointColor: "#3b8bba",
						pointStrokeColor: "rgba(60,141,188,1)",
						pointHighlightFill: "#fff",
						pointHighlightStroke: "rgba(60,141,188,1)",
						data: [28, 48, 40, 19, 86, 27, 90]
					}
				]
			};

			var areaChartOptions = {
				//Boolean - If we should show the scale at all
				showScale: true,
				//Boolean - Whether grid lines are shown across the chart
				scaleShowGridLines: false,
				//String - Colour of the grid lines
				scaleGridLineColor: "rgba(0,0,0,.05)",
				//Number - Width of the grid lines
				scaleGridLineWidth: 1,
				//Boolean - Whether to show horizontal lines (except X axis)
				scaleShowHorizontalLines: true,
				//Boolean - Whether to show vertical lines (except Y axis)
				scaleShowVerticalLines: true,
				//Boolean - Whether the line is curved between points
				bezierCurve: true,
				//Number - Tension of the bezier curve between points
				bezierCurveTension: 0.3,
				//Boolean - Whether to show a dot for each point
				pointDot: false,
				//Number - Radius of each point dot in pixels
				pointDotRadius: 4,
				//Number - Pixel width of point dot stroke
				pointDotStrokeWidth: 1,
				//Number - amount extra to add to the radius to cater for hit detection outside the drawn point
				pointHitDetectionRadius: 20,
				//Boolean - Whether to show a stroke for datasets
				datasetStroke: true,
				//Number - Pixel width of dataset stroke
				datasetStrokeWidth: 2,
				//Boolean - Whether to fill the dataset with a color
				datasetFill: true,
				//String - A legend template
				//Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
				maintainAspectRatio: true,
				//Boolean - whether to make the chart responsive to window resizing
				responsive: true
			};

			//Create the line chart
			areaChart.Line(areaChartData, areaChartOptions);

			//-------------
			//- LINE CHART -
			//--------------
			var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
			var lineChart = new Chart(lineChartCanvas);
			var lineChartOptions = areaChartOptions;
			lineChartOptions.datasetFill = false;
			lineChart.Line(areaChartData, lineChartOptions);

			//-------------
			//- PIE CHART -
			//-------------
			// Get context with jQuery - using jQuery's .get() method.
			var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
			var pieChart = new Chart(pieChartCanvas);
			var PieData = [{
				value: 700,
				color: "#f56954",
				highlight: "#f56954",
				label: "Chrome"
			},
				{
					value: 500,
					color: "#00a65a",
					highlight: "#00a65a",
					label: "IE"
				},
				{
					value: 400,
					color: "#f39c12",
					highlight: "#f39c12",
					label: "FireFox"
				},
				{
					value: 600,
					color: "#00c0ef",
					highlight: "#00c0ef",
					label: "Safari"
				},
				{
					value: 300,
					color: "#3c8dbc",
					highlight: "#3c8dbc",
					label: "Opera"
				},
				{
					value: 100,
					color: "#d2d6de",
					highlight: "#d2d6de",
					label: "Navigator"
				}
			];
			var pieOptions = {
				//Boolean - Whether we should show a stroke on each segment
				segmentShowStroke: true,
				//String - The colour of each segment stroke
				segmentStrokeColor: "#fff",
				//Number - The width of each segment stroke
				segmentStrokeWidth: 2,
				//Number - The percentage of the chart that we cut out of the middle
				percentageInnerCutout: 50, // This is 0 for Pie charts
				//Number - Amount of animation steps
				animationSteps: 100,
				//String - Animation easing effect
				animationEasing: "easeOutBounce",
				//Boolean - Whether we animate the rotation of the Doughnut
				animateRotate: true,
				//Boolean - Whether we animate scaling the Doughnut from the centre
				animateScale: false,
				//Boolean - whether to make the chart responsive to window resizing
				responsive: true,
				// Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
				maintainAspectRatio: true,
				//String - A legend template
			};
			//Create pie or douhnut chart
			// You can switch between pie and douhnut using the method below.
			pieChart.Doughnut(PieData, pieOptions);

			//-------------
			//- BAR CHART -
			//-------------
			var barChartCanvas = $("#barChart").get(0).getContext("2d");
			var barChart = new Chart(barChartCanvas);
			var barChartData = areaChartData;
			barChartData.datasets[1].fillColor = "#00a65a";
			barChartData.datasets[1].strokeColor = "#00a65a";
			barChartData.datasets[1].pointColor = "#00a65a";
			var barChartOptions = {
				//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
				scaleBeginAtZero: true,
				//Boolean - Whether grid lines are shown across the chart
				scaleShowGridLines: true,
				//String - Colour of the grid lines
				scaleGridLineColor: "rgba(0,0,0,.05)",
				//Number - Width of the grid lines
				scaleGridLineWidth: 1,
				//Boolean - Whether to show horizontal lines (except X axis)
				scaleShowHorizontalLines: true,
				//Boolean - Whether to show vertical lines (except Y axis)
				scaleShowVerticalLines: true,
				//Boolean - If there is a stroke on each bar
				barShowStroke: true,
				//Number - Pixel width of the bar stroke
				barStrokeWidth: 2,
				//Number - Spacing between each of the X value sets
				barValueSpacing: 5,
				//Number - Spacing between data sets within X values
				barDatasetSpacing: 1,
				//String - A legend template
				//Boolean - whether to make the chart responsive
				responsive: true,
				maintainAspectRatio: true
			};

			barChartOptions.datasetFill = false;
			barChart.Bar(barChartData, barChartOptions);
		});

		// 激活导航位置
		setSidebarActive("charts-chartjs");
	</script>
</body>

</html>