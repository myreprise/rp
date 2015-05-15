function createMap(longitude, lattitude){
	var map;
	var arrMarkers = [];
	var arrInfoWindow = [];
	var markers;

	map = new BMap.Map("allmap"); 
	map.centerAndZoom(new BMap.Point(longitude, lattitude), 11);
	map.addControl(new BMap.MapTypeControl());
	map.enableScrollWheelZoom();
	map.enableContinuousZoom();
	map.addControl(new BMap.NavigationControl());
//	map.setMapStyle({styleJson: mapStyle});

	console.log(gon.projects);


	$.each(gon.projects, function(key, val) {
			console.log(key, val); 
			marker = new BMap.Marker(new BMap.Point(val.longitude, val.lattitude));
			map.addOverlay(marker);	
	}); //end of .each()

}

function updateMap(){

}