function createMap(longitude, lattitude, zoom, gon_query){
	var map;
	var arrMarkers = [];
	var arrInfoWindow = [];
	var markers;

	map = new BMap.Map("allmap"); 
	map.centerAndZoom(new BMap.Point(longitude, lattitude), zoom);
	map.addControl(new BMap.MapTypeControl());
	map.enableScrollWheelZoom();
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


	if (gon_query.length > 1){
		$.each(gon_query, function(key, val) {
				marker = new BMap.Marker(new BMap.Point(val.longitude, val.lattitude));
				content = "<h4>" + val.name + "</h4>";
				addClickHandler(content, marker);
				map.addOverlay(marker);	
		}); //end of .each()
	} else {
		marker = new BMap.Marker(new BMap.Point(gon_query.longitude, gon_query.lattitude));
		content = "<h4>" + gon_query.name + "</h4><p class='projectInfo'>" + "EXISTING/FUTURE project (" + gon_query.year + ")" + "</p><p class='projectInfo'>" + gon_query.grade + " " + gon_query.type + "</p><p class='last'>" + addCommas(gon_query.gfa) + " sq m" + "</p>";
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


}




function addCommas(nStr) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
} //end the addCommas function


function distance(taubman, other){
	var RADIUS = 6371000;
	var latRad1 = taubman[1] * Math.PI/180;
	var latRad2 = other[1] * Math.PI/180;
	var deltaLat = (other[1] - taubman[1]) * Math.PI/180;
	var deltaLon = (other[0] - taubman[0]) * Math.PI/180;

	var a = Math.sin(deltaLat/2)*Math.sin(deltaLat/2) + Math.cos(latRad1)*Math.cos(latRad2)*Math.sin(deltaLon/2)*Math.sin(deltaLon/2);
	var c = 2*Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	return (RADIUS * c)/1000;
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

//window.onload = loadScript;
