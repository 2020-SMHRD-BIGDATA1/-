<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemDAO"%>
<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>  
		<title>Elements - Spectral by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	
	
	
	
	<%	
	String rud = null;
	String gbd = null;
	String dy = null;
	String Lrus = null;
	String Rrus = null;
	MemDTO info = (MemDTO)session.getAttribute("info");
	String loginfail=(String)session.getAttribute("loginfail");
	MemDAO dao = new MemDAO();
	
	%>
	
	
	
	
	
	
	

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="home.jsp">Spectral</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="home.jsp">Home</a></li>
											<li><a href="null.jsp">Null</a></li>
											<li><a href="report.jsp">Report</a></li>
											<li><a href="#">Sign Up</a></li>
											<li><a href="#">Log In</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<article id="main">
						<header>
							<canvas id="chart-area" style="display: block; height: 256px; width: 512px;" width="512" height="256" class="chartjs-render-monitor"></canvas>
						</header>
						<section class="wrapper style5">
							<div class="inner">
									<canvas id="chart1" width="50%" height="300" class="chartjs-render-monitor" style="display: block;"></canvas>

							</div>
						</section>
						<section class="wrapper style5">
							<div class="inner">
							
							
							
							
							<table class="type07">
    <thead>

		

    <tr>
    	
    <script type="text/javascript">
	<%if (info != null) {%>
		<%
		
		ArrayList<String> list=dao.BDATE(info.getId());%>
		var bdate=[];
		<% for(int i=0; i<list.size(); i++){%>
		bdate.push('<%= list.get(i) %>');
		<% } %>
			document.write("<th scope='cols'>/</th>")
		for(var i=bdate.length; i>(bdate.length-5); i--){
			document.write("<th scope='cols'>")
			document.write(bdate[i-1])
			document.write("</th>")
		}
			document.write("<th scope='cols'>결과</th>")
<%	}%>
	
			
		
	</script>
    	
    
        
        
       
        
    
    
        
        

        
    </tr>
    </thead>
    <tbody>
    <tr>
    
    
    
    
    
    
    
    
     <script type="text/javascript">
     var cnt = 0;
 	<%if (info != null) {%>
	<%
	
	ArrayList<String> list=dao.CS5(info.getId());%>
	var CS5=[];
	<% for(int i=0; i<list.size(); i++){%>
	CS5.push('<%= list.get(i) %>');
	<% } %>
		rud = CS5[CS5.length-1];
		document.write("<th scope='row'>경추</th>")
	for(var i=CS5.length; i>(CS5.length-5); i--){
		document.write("<td>")
		document.write(CS5[i-1])
		document.write("</td>")
		cnt += parseInt(CS5[i-1]);
	}
		document.write("<th scope='cols'>"+cnt+"회</th>")
<%	}%>
	
			
		
	</script>
    
    
    </tr>
    <tr>
       
        <script type="text/javascript">
        var cnt1=0;
	<%if (info != null) {%>
		<%
		
		ArrayList<String> list=dao.TS5(info.getId());%>
		var TS5=[];
		<% for(int i=0; i<list.size(); i++){%>
		TS5.push('<%= list.get(i) %>');
		<% } %>
			gbd = TS5[TS5.length-1];
			document.write("<th scope='row'>흉추</th>")
			
		for(var i=bdate.length; i>(bdate.length-5); i--){
			document.write("<td>")
			document.write(TS5[i-1])
			document.write("</td>")
			cnt1 += parseInt(TS5[i-1]);
		}
			document.write("<th scope='cols'>"+cnt1+"회</th>")
			
<%	}%>
	
			
		
	</script>
    </tr>
    <tr>
        <script type="text/javascript">
        var cnt2 =0;
	<%if (info != null) {%>
		<% 
		
		ArrayList<String> list=dao.LUMBER5(info.getId());%>
		var LUMBER5=[];
		<% for(int i=0; i<list.size(); i++){%>  
		LUMBER5.push('<%= list.get(i) %>');
		<% } %>
			dy = LUMBER5[LUMBER5.length-1];
			document.write("<th scope='row'>요추</th>")
		for(var i=LUMBER5.length; i>(LUMBER5.length-5); i--){
			document.write("<td>")
			document.write(LUMBER5[i-1])
			document.write("</td>")
			cnt2 += parseInt(LUMBER5[i-1]);
		}
			document.write("<th scope='cols'>"+cnt2+"회</th>")
<%	}%>
	
			
		 
	</script>
    </tr>
    <tr>
        
        <script type="text/javascript">
        var cnt3 = 0;
	<%if (info != null) {%>
		<%
		
		ArrayList<String> list=dao.LS5(info.getId());%>
		var LS5=[];
		<% for(int i=0; i<list.size(); i++){%>
		LS5.push('<%= list.get(i) %>');
		<% } %>
			Lrus = LS5[LS5.length-1];
			document.write("<th scope='row'>견갑골(좌)</th>")
		for(var i=LS5.length; i>(LS5.length-5); i--){
			document.write("<td>")
			document.write(LS5[i-1])
			document.write("</td>")
			cnt3 += parseInt(LS5[i-1]);
		}
			document.write("<th scope='cols'>"+cnt3+"회</th>")
<%	}%>
	
			
		
	</script>
    </tr>
    <tr>
        <script type="text/javascript">
        var cnt4 = 0;
	<%if (info != null) {%>
		<%
		
		ArrayList<String> list=dao.RS5(info.getId());%>
		var RS5=[];
		<% for(int i=0; i<list.size(); i++){%>
		RS5.push('<%= list.get(i) %>');
		<% } %>
			Rrus = RS5[RS5.length-1]
			document.write("<th scope='row'>견갑골(우)</th>")
		for(var i=RS5.length; i>(RS5.length-5); i--){
			document.write("<td>")
			document.write(RS5[i-1])
			document.write("</td>")
			cnt4 += parseInt(RS5[i-1]);
		}
			document.write("<th scope='cols'>"+cnt4+"회</th>")
<%	}%>
	
			
		
	</script>
    </tr>
    </tbody>
</table>
							
							
							
							
							
							
							
							</div>
						</section>
					</article>

				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</footer>

			</div>






































		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
			
			
			
			
			
			
			
			
			
			
			
			
	<script>
	//파이차트
	var randomScalingFactor = function() {
		return Math.round(Math.random() * 100);
	};
<<<<<<< HEAD
	var config = {
		type: 'doughnut',
		data: {
			datasets: [{
				data: [
					rud,
					gbd,
					dy,
					Lrus,
					Rrus,
				],
				backgroundColor: [
					window.chartColors.red,
					window.chartColors.orange,
					window.chartColors.yellow,
					window.chartColors.green,
					window.chartColors.blue,
				],
				label: 'Dataset 1'
			}],
			labels: [
				'경추',
				'흉추',
				'요추',
				'견갑골(좌)',
				'견갑골(우)'
			]
		},
		options: {
			responsive: true,
			legend: {
				position: 'top',
			},
			title: {
				display: true,
				text: '최근 하루 통계치'
			},
			animation: {
				animateScale: true,
				animateRotate: true
			}
		}
	};
	window.onload = function() {
		var ctx = document.getElementById('chart-area').getContext('2d');
		window.myDoughnut = new Chart(ctx, config);
	};
	//파이차트 끝
	//막대차트?>
	function generateData() {
			var unit = document.getElementById('unit').value;
			function unitLessThanDay() {
				return unit === 'second' || unit === 'minute' || unit === 'hour';
			}
			function beforeNineThirty(date) {
				return date.hour() < 9 || (date.hour() === 9 && date.minute() < 30);
			}
			// Returns true if outside 9:30am-4pm on a weekday
			function outsideMarketHours(date) {
				if (date.isoWeekday() > 5) {
					return true;
				}
				if (unitLessThanDay() && (beforeNineThirty(date) || date.hour() > 16)) {
					return true;
				}
				return false;
			}
			function randomNumber(min, max) {
				return Math.random() * (max - min) + min;
			}
			function randomBar(date, lastClose) {
				var open = randomNumber(lastClose * 0.95, lastClose * 1.05).toFixed(2);
				var close = randomNumber(open * 0.95, open * 1.05).toFixed(2);
				return {
					t: date.valueOf(),
					y: close
				};
			}
			var date = moment('Jan 01 2020', 'MMM DD YYYY');
			var now = moment();
			var data = [];
			var lessThanDay = unitLessThanDay();
			for (; data.length < 600 && date.isBefore(now); date = date.clone().add(1, unit).startOf(unit)) {
				if (outsideMarketHours(date)) {
					if (!lessThanDay || !beforeNineThirty(date)) {
						date = date.clone().add(date.isoWeekday() >= 5 ? 8 - date.isoWeekday() : 1, 'day');
					}
					if (lessThanDay) {
						date = date.hour(9).minute(30).second(0);
					}
				}
				data.push(randomBar(date, data.length > 0 ? data[data.length - 1].y : 30));
			}
			return data;
		}
		var ctx = document.getElementById('chart1').getContext('2d');
		ctx.canvas.width = 1000;
		ctx.canvas.height = 300;
		var color = Chart.helpers.color;
		var cfg = {
			data: {
				datasets: [{
					label: 'CHRT - Chart.js Corporation',
					backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
					borderColor: window.chartColors.red,
					data: generateData(),
					type: 'line',
					pointRadius: 0,
					fill: false,
					lineTension: 0,
					borderWidth: 2
				}]
			},
			options: {
				animation: {
					duration: 0
				},
				scales: {
					xAxes: [{
						type: 'time',
						distribution: 'series',
						offset: true,
						ticks: {
							major: {
								enabled: true,
								fontStyle: 'bold'
							},
							source: 'data',
							autoSkip: true,
							autoSkipPadding: 75,
							maxRotation: 0,
							sampleSize: 100
						},
						afterBuildTicks: function(scale, ticks) {
							var majorUnit = scale._majorUnit;
							var firstTick = ticks[0];
							var i, ilen, val, tick, currMajor, lastMajor;
							val = moment(ticks[0].value);
							if ((majorUnit === 'minute' && val.second() === 0)
									|| (majorUnit === 'hour' && val.minute() === 0)
									|| (majorUnit === 'day' && val.hour() === 9)
									|| (majorUnit === 'month' && val.date() <= 3 && val.isoWeekday() === 1)
									|| (majorUnit === 'year' && val.month() === 0)) {
								firstTick.major = true;
							} else {
								firstTick.major = false;
							}
							lastMajor = val.get(majorUnit);
							for (i = 1, ilen = ticks.length; i < ilen; i++) {
								tick = ticks[i];
								val = moment(tick.value);
								currMajor = val.get(majorUnit);
								tick.major = currMajor !== lastMajor;
								lastMajor = currMajor;
							}
							return ticks;
						}
					}],
					yAxes: [{
						gridLines: {
							drawBorder: false
						},
						scaleLabel: {
							display: true,
							labelString: 'Closing price ($)'
						}
					}]
				},
				tooltips: {
					intersect: false,
					mode: 'index',
					callbacks: {
						label: function(tooltipItem, myData) {
							var label = myData.datasets[tooltipItem.datasetIndex].label || '';
							if (label) {
								label += ': ';
							}
							label += parseFloat(tooltipItem.value).toFixed(2);
							return label;
						}
					}
				}
			}
		};
		var chart = new Chart(ctx, cfg);
		document.getElementById('update').addEventListener('click', function() {
			var type = document.getElementById('type').value;
			var dataset = chart.config.data.datasets[0];
			dataset.type = type;
			dataset.data = generateData();
			chart.update();
		});
	//막대차트 끝
	//막대차트?>
	function generateData() {
			var unit = document.getElementById('unit').value;
			function unitLessThanDay() {
				return unit === 'second' || unit === 'minute' || unit === 'hour';
			}
			function beforeNineThirty(date) {
				return date.hour() < 9 || (date.hour() === 9 && date.minute() < 30);
			}
			// Returns true if outside 9:30am-4pm on a weekday
			function outsideMarketHours(date) {
				if (date.isoWeekday() > 5) {
					return true;
				}
				if (unitLessThanDay() && (beforeNineThirty(date) || date.hour() > 16)) {
					return true;
				}
				return false;
			}
			function randomNumber(min, max) {
				return Math.random() * (max - min) + min;
			}
			function randomBar(date, lastClose) {
				var open = randomNumber(lastClose * 0.95, lastClose * 1.05).toFixed(2);
				var close = randomNumber(open * 0.95, open * 1.05).toFixed(2);
				return {
					t: date.valueOf(),
					y: close
				};
			}
			var date = moment('Jan 01 2020', 'MMM DD YYYY');
			var now = moment();
			var data = [];
			var lessThanDay = unitLessThanDay();
			for (; data.length < 600 && date.isBefore(now); date = date.clone().add(1, unit).startOf(unit)) {
				if (outsideMarketHours(date)) {
					if (!lessThanDay || !beforeNineThirty(date)) {
						date = date.clone().add(date.isoWeekday() >= 5 ? 8 - date.isoWeekday() : 1, 'day');
					}
					if (lessThanDay) {
						date = date.hour(9).minute(30).second(0);
					}
				}
				data.push(randomBar(date, data.length > 0 ? data[data.length - 1].y : 30));
			}
			return data;
		}
		var ctx = document.getElementById('chart1').getContext('2d');
		ctx.canvas.width = 1000;
		ctx.canvas.height = 300;
		var color = Chart.helpers.color;
		var cfg = {
			data: {
				datasets: [{
					label: 'CHRT - Chart.js Corporation',
					backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
					borderColor: window.chartColors.red,
					data: generateData(),
					type: 'line',
					pointRadius: 0,
					fill: false,
					lineTension: 0,
					borderWidth: 2
				}]
			},
			options: {
				animation: {
					duration: 0
				},
				scales: {
					xAxes: [{
						type: 'time',
						distribution: 'series',
						offset: true,
						ticks: {
							major: {
								enabled: true,
								fontStyle: 'bold'
							},
							source: 'data',
							autoSkip: true,
							autoSkipPadding: 75,
							maxRotation: 0,
							sampleSize: 100
						},
						afterBuildTicks: function(scale, ticks) {
							var majorUnit = scale._majorUnit;
							var firstTick = ticks[0];
							var i, ilen, val, tick, currMajor, lastMajor;
							val = moment(ticks[0].value);
							if ((majorUnit === 'minute' && val.second() === 0)
									|| (majorUnit === 'hour' && val.minute() === 0)
									|| (majorUnit === 'day' && val.hour() === 9)
									|| (majorUnit === 'month' && val.date() <= 3 && val.isoWeekday() === 1)
									|| (majorUnit === 'year' && val.month() === 0)) {
								firstTick.major = true;
							} else {
								firstTick.major = false;
							}
							lastMajor = val.get(majorUnit);
							for (i = 1, ilen = ticks.length; i < ilen; i++) {
								tick = ticks[i];
								val = moment(tick.value);
								currMajor = val.get(majorUnit);
								tick.major = currMajor !== lastMajor;
								lastMajor = currMajor;
							}
							return ticks;
						}
					}],
					yAxes: [{
						gridLines: {
							drawBorder: false
						},
						scaleLabel: {
							display: true,
							labelString: 'Closing price ($)'
						}
					}]
				},
				tooltips: {
					intersect: false,
					mode: 'index',
					callbacks: {
						label: function(tooltipItem, myData) {
							var label = myData.datasets[tooltipItem.datasetIndex].label || '';
							if (label) {
								label += ': ';
							}
							label += parseFloat(tooltipItem.value).toFixed(2);
							return label;
						}
					}
				}
			}
		};
		var chart = new Chart(ctx, cfg);
=======

	var config = {
		type: 'doughnut',
		data: {
			datasets: [{
				data: [
					rud,
					gbd,
					dy,
					Lrus,
					Rrus,
				],
				backgroundColor: [
					window.chartColors.red,
					window.chartColors.orange,
					window.chartColors.yellow,
					window.chartColors.green,
					window.chartColors.blue,
				],
				label: 'Dataset 1'
			}],
			labels: [
				'경추',
				'흉추',
				'요추',
				'견갑골(좌)',
				'견갑골(우)'
			]
		},
		options: {
			responsive: true,
			legend: {
				position: 'top',
			},
			title: {
				display: true,
				text: '최근 하루 통계치'
			},
			animation: {
				animateScale: true,
				animateRotate: true
			}
		}
	};

	window.onload = function() {
		var ctx = document.getElementById('chart-area').getContext('2d');
		window.myDoughnut = new Chart(ctx, config);
	};
	//파이차트 끝
	//막대차트?>
	function generateData() {
			var unit = document.getElementById('unit').value;

			function unitLessThanDay() {
				return unit === 'second' || unit === 'minute' || unit === 'hour';
			}

			function beforeNineThirty(date) {
				return date.hour() < 9 || (date.hour() === 9 && date.minute() < 30);
			}

			// Returns true if outside 9:30am-4pm on a weekday
			function outsideMarketHours(date) {
				if (date.isoWeekday() > 5) {
					return true;
				}
				if (unitLessThanDay() && (beforeNineThirty(date) || date.hour() > 16)) {
					return true;
				}
				return false;
			}

			function randomNumber(min, max) {
				return Math.random() * (max - min) + min;
			}

			function randomBar(date, lastClose) {
				var open = randomNumber(lastClose * 0.95, lastClose * 1.05).toFixed(2);
				var close = randomNumber(open * 0.95, open * 1.05).toFixed(2);
				return {
					t: date.valueOf(),
					y: close
				};
			}

			var date = moment('Jan 01 2020', 'MMM DD YYYY');
			var now = moment();
			var data = [];
			var lessThanDay = unitLessThanDay();
			for (; data.length < 600 && date.isBefore(now); date = date.clone().add(1, unit).startOf(unit)) {
				if (outsideMarketHours(date)) {
					if (!lessThanDay || !beforeNineThirty(date)) {
						date = date.clone().add(date.isoWeekday() >= 5 ? 8 - date.isoWeekday() : 1, 'day');
					}
					if (lessThanDay) {
						date = date.hour(9).minute(30).second(0);
					}
				}
				data.push(randomBar(date, data.length > 0 ? data[data.length - 1].y : 30));
			}

			return data;
		}

		var ctx = document.getElementById('chart1').getContext('2d');
		ctx.canvas.width = 1000;
		ctx.canvas.height = 300;

		var color = Chart.helpers.color;
		var cfg = {
			data: {
				datasets: [{
					label: 'CHRT - Chart.js Corporation',
					backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
					borderColor: window.chartColors.red,
					data: generateData(),
					type: 'line',
					pointRadius: 0,
					fill: false,
					lineTension: 0,
					borderWidth: 2
				}]
			},
			options: {
				animation: {
					duration: 0
				},
				scales: {
					xAxes: [{
						type: 'time',
						distribution: 'series',
						offset: true,
						ticks: {
							major: {
								enabled: true,
								fontStyle: 'bold'
							},
							source: 'data',
							autoSkip: true,
							autoSkipPadding: 75,
							maxRotation: 0,
							sampleSize: 100
						},
						afterBuildTicks: function(scale, ticks) {
							var majorUnit = scale._majorUnit;
							var firstTick = ticks[0];
							var i, ilen, val, tick, currMajor, lastMajor;

							val = moment(ticks[0].value);
							if ((majorUnit === 'minute' && val.second() === 0)
									|| (majorUnit === 'hour' && val.minute() === 0)
									|| (majorUnit === 'day' && val.hour() === 9)
									|| (majorUnit === 'month' && val.date() <= 3 && val.isoWeekday() === 1)
									|| (majorUnit === 'year' && val.month() === 0)) {
								firstTick.major = true;
							} else {
								firstTick.major = false;
							}
							lastMajor = val.get(majorUnit);

							for (i = 1, ilen = ticks.length; i < ilen; i++) {
								tick = ticks[i];
								val = moment(tick.value);
								currMajor = val.get(majorUnit);
								tick.major = currMajor !== lastMajor;
								lastMajor = currMajor;
							}
							return ticks;
						}
					}],
					yAxes: [{
						gridLines: {
							drawBorder: false
						},
						scaleLabel: {
							display: true,
							labelString: 'Closing price ($)'
						}
					}]
				},
				tooltips: {
					intersect: false,
					mode: 'index',
					callbacks: {
						label: function(tooltipItem, myData) {
							var label = myData.datasets[tooltipItem.datasetIndex].label || '';
							if (label) {
								label += ': ';
							}
							label += parseFloat(tooltipItem.value).toFixed(2);
							return label;
						}
					}
				}
			}
		};

		var chart = new Chart(ctx, cfg);

		document.getElementById('update').addEventListener('click', function() {
			var type = document.getElementById('type').value;
			var dataset = chart.config.data.datasets[0];
			dataset.type = type;
			dataset.data = generateData();
			chart.update();
		});
	//막대차트 끝
	//막대차트?>
	function generateData() {
			var unit = document.getElementById('unit').value;

			function unitLessThanDay() {
				return unit === 'second' || unit === 'minute' || unit === 'hour';
			}

			function beforeNineThirty(date) {
				return date.hour() < 9 || (date.hour() === 9 && date.minute() < 30);
			}

			// Returns true if outside 9:30am-4pm on a weekday
			function outsideMarketHours(date) {
				if (date.isoWeekday() > 5) {
					return true;
				}
				if (unitLessThanDay() && (beforeNineThirty(date) || date.hour() > 16)) {
					return true;
				}
				return false;
			}

			function randomNumber(min, max) {
				return Math.random() * (max - min) + min;
			}

			function randomBar(date, lastClose) {
				var open = randomNumber(lastClose * 0.95, lastClose * 1.05).toFixed(2);
				var close = randomNumber(open * 0.95, open * 1.05).toFixed(2);
				return {
					t: date.valueOf(),
					y: close
				};
			}

			var date = moment('Jan 01 2020', 'MMM DD YYYY');
			var now = moment();
			var data = [];
			var lessThanDay = unitLessThanDay();
			for (; data.length < 600 && date.isBefore(now); date = date.clone().add(1, unit).startOf(unit)) {
				if (outsideMarketHours(date)) {
					if (!lessThanDay || !beforeNineThirty(date)) {
						date = date.clone().add(date.isoWeekday() >= 5 ? 8 - date.isoWeekday() : 1, 'day');
					}
					if (lessThanDay) {
						date = date.hour(9).minute(30).second(0);
					}
				}
				data.push(randomBar(date, data.length > 0 ? data[data.length - 1].y : 30));
			}

			return data;
		}

		var ctx = document.getElementById('chart1').getContext('2d');
		ctx.canvas.width = 1000;
		ctx.canvas.height = 300;

		var color = Chart.helpers.color;
		var cfg = {
			data: {
				datasets: [{
					label: 'CHRT - Chart.js Corporation',
					backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
					borderColor: window.chartColors.red,
					data: generateData(),
					type: 'line',
					pointRadius: 0,
					fill: false,
					lineTension: 0,
					borderWidth: 2
				}]
			},
			options: {
				animation: {
					duration: 0
				},
				scales: {
					xAxes: [{
						type: 'time',
						distribution: 'series',
						offset: true,
						ticks: {
							major: {
								enabled: true,
								fontStyle: 'bold'
							},
							source: 'data',
							autoSkip: true,
							autoSkipPadding: 75,
							maxRotation: 0,
							sampleSize: 100
						},
						afterBuildTicks: function(scale, ticks) {
							var majorUnit = scale._majorUnit;
							var firstTick = ticks[0];
							var i, ilen, val, tick, currMajor, lastMajor;

							val = moment(ticks[0].value);
							if ((majorUnit === 'minute' && val.second() === 0)
									|| (majorUnit === 'hour' && val.minute() === 0)
									|| (majorUnit === 'day' && val.hour() === 9)
									|| (majorUnit === 'month' && val.date() <= 3 && val.isoWeekday() === 1)
									|| (majorUnit === 'year' && val.month() === 0)) {
								firstTick.major = true;
							} else {
								firstTick.major = false;
							}
							lastMajor = val.get(majorUnit);

							for (i = 1, ilen = ticks.length; i < ilen; i++) {
								tick = ticks[i];
								val = moment(tick.value);
								currMajor = val.get(majorUnit);
								tick.major = currMajor !== lastMajor;
								lastMajor = currMajor;
							}
							return ticks;
						}
					}],
					yAxes: [{
						gridLines: {
							drawBorder: false
						},
						scaleLabel: {
							display: true,
							labelString: 'Closing price ($)'
						}
					}]
				},
				tooltips: {
					intersect: false,
					mode: 'index',
					callbacks: {
						label: function(tooltipItem, myData) {
							var label = myData.datasets[tooltipItem.datasetIndex].label || '';
							if (label) {
								label += ': ';
							}
							label += parseFloat(tooltipItem.value).toFixed(2);
							return label;
						}
					}
				}
			}
		};

		var chart = new Chart(ctx, cfg);

>>>>>>> refs/remotes/origin/master
		document.getElementById('update').addEventListener('click', function() {
			var type = document.getElementById('type').value;
			var dataset = chart.config.data.datasets[0];
			dataset.type = type;
			dataset.data = generateData();
			chart.update();
		});
	//막대차트 끝
	</script>
	</body>
</html>