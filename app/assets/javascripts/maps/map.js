/*

var markers = ['start'];
var point;
var map;
var marker;

function loadJScript() {
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://api.map.baidu.com/api?v=2.0&ak=BF934346e7e1c13620f7d9de908ed808&callback=init";
	document.body.appendChild(script);
}

function init() {
	map = new BMap.Map("allmap");
	point = new BMap.Point(110.404, 39.915);
	map.centerAndZoom(point,7);                 
	marker = new BMap.Marker(point);
	map.addOverlay(marker);	
	map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
}

function addMarker(longitude, lattitude){
	marker = new BMap.Marker(BMap.Point(longitude, lattitude));
	map.addOverlay(marker);
}



window.onload = loadJScript;



//百度地图API功能


$(document).ready(function(){

	// 百度地图API功能
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
	map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	map.enableScrollWheelZoom(true);   

});



	//百度地图API功能
	function loadJScript() {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = "http://api.map.baidu.com/api?v=2.0&ak=BF934346e7e1c13620f7d9de908ed808&callback=init";
		document.body.appendChild(script);
	}
	function init() {
		var map = new BMap.Map("allmap");            // 创建Map实例
		var point = new BMap.Point(116.404, 39.915); // 创建点坐标
		map.centerAndZoom(point,15);                 
		map.enableScrollWheelZoom();                 //启用滚轮放大缩小
	}  


loadJScript();

})





function loadJScript() {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = "http://api.map.baidu.com/api?v=2.0&ak=您的密钥&callback=init";
		document.body.appendChild(script);
	}
	function init() {
		var map = new BMap.Map("allmap");            // 创建Map实例
		var point = new BMap.Point(116.404, 39.915); // 创建点坐标
		map.centerAndZoom(point,15);                 
		map.enableScrollWheelZoom();                 //启用滚轮放大缩小
	}



function init(){
	var map;
	var arrMarkers = [];
	var arrInfoWindow = [];
	var markers;

	map = new BMap.Map("allmap"); 
	map.centerAndZoom(new BMap.Point(108.9000, 34.2667), 7);
	map.addControl(new BMap.MapTypeControl());
	//map.enableScrollWheelZoom();
	map.enableContinuousZoom();
	map.addControl(new BMap.NavigationControl());
//	map.setMapStyle({styleJson: mapStyle});

	var opts = {
	    width: 80,
	    height: 50,
	    enableMessage:true,
	    enableCloseOnClick:true,
	    enableAutoPan:true
	};
}

*/

/*
	if (gon_query.length > 1){
		$.each(gon_query, function(key, val) {
				marker = new BMap.Marker(new BMap.Point(val.longitude, val.lattitude));
				content = "<h4>" + val.name + "</h4>";
				addClickHandler(content, marker);
				map.addOverlay(marker);	
		}); //end of .each()
	} else {
		marker = new BMap.Marker(new BMap.Point(gon_query.longitude, gon_query.lattitude));
		content = "<h4>" + gon_query.name + "</h4><p class='projectInfo'>" + "EXISTING/FUTURE project (" + gon_query.year + ")" + "</p><p class='projectInfo'>" + gon_query.grade + " " + gon_query.type + "</p><p class='last'></p>";
		addClickHandler(content, marker);
		map.addOverlay(marker);	
		}



function openInfo(content, e){
    var p = e.target;
    var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象 
    map.openInfoWindow(infoWindow, point); //开启信息窗口
}

function addClickHandler(content, marker) {
	marker.addEventListener("click", function(e){
	openInfo(content,e)
	});
}





function distance(taubman, other){
	var RADIUS = 6371000;
	var latRad1 = taubman[1] * Math.PI/180;
	var latRad2 = other[1] * Math.PI/180;
	var deltaLat = (other[1] - taubman[1]) * Math.PI/180;
	var deltaLon = (other[0] - taubman[0]) * Math.PI/180;

	var a = Math.sin(deltaLat/2)*Math.sin(deltaLat/2) + Math.cos(latRad1)*Math.cos(latRad2)*Math.sin(deltaLon/2)*Math.sin(deltaLon/2);
	var c = 2*Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	return ((RADIUS * c)/1000).toFixed(2);
} //end of distance function


function updateMap(){

}


//for asynchronous loading
function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'http://api.map.baidu.com/api?v=2.0&ak=BF934346e7e1c13620f7d9de908ed808&callback=init';
  document.body.appendChild(script);
}



	window.onload = loadJScript; 


	*/